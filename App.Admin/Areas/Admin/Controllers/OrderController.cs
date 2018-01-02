﻿using App.Admin.Controllers;
using App.Admin.Helpers;
using App.Core.Utils;
using App.Domain.Orders;
using App.Extensions;
using App.Framework.Ultis;
using App.Service.Orders;
using AutoMapper;
using Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace App.Admin.Controllers
{
    public class OrderController : BaseAdminController
    {
        private readonly IOrderService _orderService;

        public OrderController(IOrderService orderService)
        {
            _orderService = orderService;
        }

        public ActionResult Edit(int Id)
        {
            var order = _orderService.GetById(Id);
            if (order == null || order.Deleted)
                return RedirectToAction("Index");

            OrderViewModel model = new OrderViewModel();
            model = order.ToModel(model);

            PrepareOrderDetailsModel(model, order);

            return base.View(model);
        }

        [NonAction]
        protected void PrepareOrderDetailsModel(OrderViewModel model, Order order)
        {
            if (order == null)
                throw new ArgumentNullException("order");

            if (model == null)
                throw new ArgumentNullException("model");

            //Post item
            foreach (var orderItem in order.OrderItems)
            {
                var orderItemModel = new OrderViewModel.OrderItemModel
                {
                    Id = orderItem.Id,
                    PostId = orderItem.PostId,
                    PostName = orderItem.Post.Title,
                    Quantity = orderItem.Quantity,
                    UnitPriceInclTax = orderItem.UnitPriceInclTax,
                    SubTotalInclTax = orderItem.PriceInclTax
                };

                model.Items.Add(orderItemModel);
            }

        }

        [HttpPost]
        [RequiredPermisson(Roles = "ViewOrder")]
        public ActionResult Edit(OrderViewModel OrderView, string ReturnUrl)
        {
            ActionResult action;
            try
            {
                if (!base.ModelState.IsValid)
                {
                    base.ModelState.AddModelError("", MessageUI.ErrorMessage);
                    return base.View(OrderView);
                }
                else
                {
                    Order map = Mapper.Map<OrderViewModel, Order>(OrderView);
                    this._orderService.Update(map);
                    base.Response.Cookies.Add(new HttpCookie("system_message", string.Format(MessageUI.UpdateSuccess, FormUI.Order)));
                    if (!base.Url.IsLocalUrl(ReturnUrl) || ReturnUrl.Length <= 1 || !ReturnUrl.StartsWith("/") || ReturnUrl.StartsWith("//") || ReturnUrl.StartsWith("/\\"))
                    {
                        action = base.RedirectToAction("Index");
                    }
                    else
                    {
                        action = this.Redirect(ReturnUrl);
                    }
                }
            }
            catch (Exception ex)
            {
                ExtentionUtils.Log(string.Concat("Order.Edit: ", ex.Message));
                return base.View(OrderView);
            }
            return action;
        }

        public ActionResult Index(int page = 1, string keywords = "")
        {
            ((dynamic)base.ViewBag).Keywords = keywords;
            SortingPagingBuilder sortingPagingBuilder = new SortingPagingBuilder()
            {
                Keywords = keywords,
                Sorts = new SortBuilder()
                {
                    ColumnName = "Id",
                    ColumnOrder = SortBuilder.SortOrder.Descending
                }
            };
            Paging paging = new Paging()
            {
                PageNumber = page,
                PageSize = base._pageSize,
                TotalRecord = 0
            };

            IEnumerable<Order> orders = this._orderService.PagedList(sortingPagingBuilder, paging);

            OrderViewModel orderViewModel = new OrderViewModel();
            IEnumerable<OrderViewModel> model = orders.Select(m =>
            {
                return m.ToModel(orderViewModel);
            });

            if (model != null && model.Any())
            {
                Helper.PageInfo pageInfo = new Helper.PageInfo(ExtentionUtils.PageSize, page, paging.TotalRecord, (int i) => this.Url.Action("Index", new { page = i, keywords = keywords }));
                ((dynamic)base.ViewBag).PageInfo = pageInfo;
            }

            return base.View(model);
        }
    }
}