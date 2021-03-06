jQuery(document).ready(function ($) {
    "use strict";
    if ("undefined" != typeof HOUZEZ_ajaxcalls_vars) {
        var houzezMap, markers = new Array
            , markerCluster = null
            , current_marker = 0, has_compare = $("#compare-controller").length
            , ajaxurl = '', login_sending = HOUZEZ_ajaxcalls_vars.login_loading, userID = HOUZEZ_ajaxcalls_vars.user_id, login_redirect_type = HOUZEZ_ajaxcalls_vars.redirect_type, login_redirect = HOUZEZ_ajaxcalls_vars.login_redirect, prop_lat = HOUZEZ_ajaxcalls_vars.property_lat, prop_lng = HOUZEZ_ajaxcalls_vars.property_lng, autosearch_text = HOUZEZ_ajaxcalls_vars.autosearch_text, paypal_connecting = HOUZEZ_ajaxcalls_vars.paypal_connecting, mollie_connecting = HOUZEZ_ajaxcalls_vars.mollie_connecting, process_loader_refresh = HOUZEZ_ajaxcalls_vars.process_loader_refresh, process_loader_spinner = HOUZEZ_ajaxcalls_vars.process_loader_spinner, process_loader_circle = HOUZEZ_ajaxcalls_vars.process_loader_circle, process_loader_cog = HOUZEZ_ajaxcalls_vars.process_loader_cog, success_icon = HOUZEZ_ajaxcalls_vars.success_icon, confirm_message = HOUZEZ_ajaxcalls_vars.confirm, confirm_featured = HOUZEZ_ajaxcalls_vars.confirm_featured, confirm_featured_remove = HOUZEZ_ajaxcalls_vars.confirm_featured_remove, confirm_relist = HOUZEZ_ajaxcalls_vars.confirm_relist
            , is_singular_property = HOUZEZ_ajaxcalls_vars.is_singular_property, property_map = HOUZEZ_ajaxcalls_vars.property_map, property_map_street = HOUZEZ_ajaxcalls_vars.property_map_street, currency_symb = HOUZEZ_ajaxcalls_vars.currency_symbol, advanced_search_price_range_min = parseInt(HOUZEZ_ajaxcalls_vars.advanced_search_widget_min_price), advanced_search_price_range_max = parseInt(HOUZEZ_ajaxcalls_vars.advanced_search_widget_max_price), advanced_search_price_range_min_rent = parseInt(HOUZEZ_ajaxcalls_vars.advanced_search_min_price_range_for_rent), advanced_search_price_range_max_rent = parseInt(HOUZEZ_ajaxcalls_vars.advanced_search_max_price_range_for_rent), advanced_search_widget_min_area = parseInt(HOUZEZ_ajaxcalls_vars.advanced_search_widget_min_area), advanced_search_widget_max_area = parseInt(HOUZEZ_ajaxcalls_vars.advanced_search_widget_max_area), advanced_search_price_slide = HOUZEZ_ajaxcalls_vars.advanced_search_price_slide, fave_page_template = HOUZEZ_ajaxcalls_vars.fave_page_template, fave_prop_featured = HOUZEZ_ajaxcalls_vars.prop_featured, featured_listings_none = HOUZEZ_ajaxcalls_vars.featured_listings_none, prop_sent_for_approval = HOUZEZ_ajaxcalls_vars.prop_sent_for_approval, houzez_rtl = HOUZEZ_ajaxcalls_vars.houzez_rtl, infoboxClose = HOUZEZ_ajaxcalls_vars.infoboxClose, clusterIcon = HOUZEZ_ajaxcalls_vars.clusterIcon, paged = HOUZEZ_ajaxcalls_vars.paged, sort_by = HOUZEZ_ajaxcalls_vars.sort_by, google_map_style = HOUZEZ_ajaxcalls_vars.google_map_style, googlemap_default_zoom = HOUZEZ_ajaxcalls_vars.googlemap_default_zoom, googlemap_pin_cluster = HOUZEZ_ajaxcalls_vars.googlemap_pin_cluster, googlemap_zoom_cluster = HOUZEZ_ajaxcalls_vars.googlemap_zoom_cluster, map_icons_path = HOUZEZ_ajaxcalls_vars.map_icons_path, google_map_needed = HOUZEZ_ajaxcalls_vars.google_map_needed, simple_logo = HOUZEZ_ajaxcalls_vars.simple_logo, retina_logo = HOUZEZ_ajaxcalls_vars.retina_logo, retina_logo_mobile = HOUZEZ_ajaxcalls_vars.retina_logo_mobile, retina_logo_mobile_splash = HOUZEZ_ajaxcalls_vars.retina_logo_mobile_splash, retina_logo_splash = HOUZEZ_ajaxcalls_vars.retina_logo_splash, retina_logo_height = HOUZEZ_ajaxcalls_vars.retina_logo_height, retina_logo_width = HOUZEZ_ajaxcalls_vars.retina_logo_width, transparent_menu = HOUZEZ_ajaxcalls_vars.transparent_menu, transportation = HOUZEZ_ajaxcalls_vars.transportation, supermarket = HOUZEZ_ajaxcalls_vars.supermarket, schools = HOUZEZ_ajaxcalls_vars.schools, libraries = HOUZEZ_ajaxcalls_vars.libraries, pharmacies = HOUZEZ_ajaxcalls_vars.pharmacies, hospitals = HOUZEZ_ajaxcalls_vars.hospitals, currency_position = HOUZEZ_ajaxcalls_vars.currency_position, currency_updating_msg = HOUZEZ_ajaxcalls_vars.currency_updating_msg, submission_currency = HOUZEZ_ajaxcalls_vars.submission_currency, wire_transfer_text = HOUZEZ_ajaxcalls_vars.wire_transfer_text, direct_pay_thanks = HOUZEZ_ajaxcalls_vars.direct_pay_thanks, direct_payment_title = HOUZEZ_ajaxcalls_vars.direct_payment_title, direct_payment_button = HOUZEZ_ajaxcalls_vars.direct_payment_button, direct_payment_details = HOUZEZ_ajaxcalls_vars.direct_payment_details, measurement_unit = HOUZEZ_ajaxcalls_vars.measurement_unit, measurement_updating_msg = HOUZEZ_ajaxcalls_vars.measurement_updating_msg, thousands_separator = HOUZEZ_ajaxcalls_vars.thousands_separator, rent_status_for_price_range = HOUZEZ_ajaxcalls_vars.for_rent_price_range, current_tempalte = HOUZEZ_ajaxcalls_vars.current_tempalte, not_found = HOUZEZ_ajaxcalls_vars.not_found, property_detail_top = HOUZEZ_ajaxcalls_vars.property_detail_top, keyword_search_field = HOUZEZ_ajaxcalls_vars.keyword_search_field, keyword_autocomplete = HOUZEZ_ajaxcalls_vars.keyword_autocomplete, template_thankyou = HOUZEZ_ajaxcalls_vars.template_thankyou, direct_pay_text = HOUZEZ_ajaxcalls_vars.direct_pay_text, search_result_page = HOUZEZ_ajaxcalls_vars.search_result_page, houzez_default_radius = HOUZEZ_ajaxcalls_vars.houzez_default_radius, enable_radius_search = HOUZEZ_ajaxcalls_vars.enable_radius_search, enable_radius_search_halfmap = HOUZEZ_ajaxcalls_vars.enable_radius_search_halfmap, houzez_primary_color = HOUZEZ_ajaxcalls_vars.houzez_primary_color, houzez_geocomplete_country = HOUZEZ_ajaxcalls_vars.geocomplete_country, houzez_logged_in = HOUZEZ_ajaxcalls_vars.houzez_logged_in, ipinfo_location = HOUZEZ_ajaxcalls_vars.ipinfo_location, delete_property_loading = HOUZEZ_ajaxcalls_vars.delete_property, delete_property_confirmation = HOUZEZ_ajaxcalls_vars.delete_confirmation, compare_button_url = HOUZEZ_ajaxcalls_vars.compare_button_url, compare_page_not_found = HOUZEZ_ajaxcalls_vars.compare_page_not_found;
        if (houzez_rtl = "yes" == houzez_rtl,
            "" !== retina_logo && "" !== retina_logo_width && "" !== retina_logo_height && 2 == window.devicePixelRatio && ("yes" == transparent_menu ? ($(".houzez-header-transparent .logo-desktop img").attr("src", retina_logo_splash),
                $(".houzez-header-transparent .logo-desktop img").attr("width", retina_logo_width),
                $(".houzez-header-transparent .logo-desktop img").attr("height", retina_logo_height),
                $(".sticky_nav.header-section-4 .logo-desktop img").attr("src", retina_logo),
                $(".sticky_nav.header-section-4 .logo-desktop img").attr("width", retina_logo_width),
                $(".sticky_nav.header-section-4 .logo-desktop img").attr("height", retina_logo_height)) : ($(".logo-desktop img").attr("src", retina_logo),
                    $(".logo-desktop img").attr("width", retina_logo_width),
                    $(".logo-desktop img").attr("height", retina_logo_height))),
            "" !== retina_logo_splash && "" !== retina_logo_width && "" !== retina_logo_height && 2 == window.devicePixelRatio && ($(".splash-header .logo-desktop img").attr("src", retina_logo_splash),
                $(".splash-header .logo-desktop img").attr("width", retina_logo_width),
                $(".splash-header .logo-desktop img").attr("height", retina_logo_height)),
            "" !== retina_logo_mobile && 2 == window.devicePixelRatio && $(".logo-mobile img").attr("src", retina_logo_mobile),
            "" !== retina_logo_mobile_splash && 2 == window.devicePixelRatio && $(".logo-mobile-splash img").attr("src", retina_logo_mobile_splash),
            "yes" == google_map_needed) {
            var placesIDs = new Array
                , transportationsMarkers = new Array
                , supermarketsMarkers = new Array
                , schoolsMarkers = new Array
                , librariesMarkers = new Array
                , pharmaciesMarkers = new Array
                , hospitalsMarkers = new Array
                , drgflag = !0
                , houzez_is_mobile = !1;
            /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) && (drgflag = !1,
                houzez_is_mobile = !0);
            var houzezMapoptions = {
                zoom: parseInt(googlemap_default_zoom),
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                panControl: !1,
                draggable: drgflag,
                zoomControl: !1,
                mapTypeControl: !1,
                scaleControl: !1,
                streetViewControl: !1,
                overviewMapControl: !1,
                zoomControlOptions: {
                    style: google.maps.ZoomControlStyle.SMALL,
                    position: google.maps.ControlPosition.RIGHT_TOP
                },
                streetViewControlOptions: {
                    position: google.maps.ControlPosition.RIGHT_TOP
                }
            }
                , houzezHeaderMapOptions = {
                    maxZoom: 20,
                    disableDefaultUI: !0,
                    scrollwheel: !1,
                    scroll: {
                        x: $(window).scrollLeft(),
                        y: $(window).scrollTop()
                    },
                    zoom: parseInt(googlemap_default_zoom),
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    draggable: drgflag
                }
                , infobox = new InfoBox({
                    disableAutoPan: !0,
                    maxWidth: 275,
                    alignBottom: !0,
                    pixelOffset: new google.maps.Size(-122, -48),
                    zIndex: null,
                    closeBoxMargin: "0 0 -16px -16px",
                    closeBoxURL: infoboxClose,
                    infoBoxClearance: new google.maps.Size(1, 1),
                    isHidden: !1,
                    pane: "floatPane",
                    enableEventPropagation: !1
                })
                , poiInfo = new InfoBox({
                    disableAutoPan: !1,
                    maxWidth: 250,
                    pixelOffset: new google.maps.Size(-72, -70),
                    zIndex: null,
                    boxStyle: {
                        background: "#ffffff",
                        opacity: 1,
                        padding: "6px",
                        "box-shadow": "0 1px 2px 0 rgba(0, 0, 0, 0.12)",
                        width: "145px",
                        "text-align": "center",
                        "border-radius": "4px"
                    },
                    closeBoxMargin: "28px 26px 0px 0px",
                    closeBoxURL: "",
                    infoBoxClearance: new google.maps.Size(1, 1),
                    pane: "floatPane",
                    enableEventPropagation: !1
                })
                , houzezGetPOIs = function (e, a, r) {
                    var t = new google.maps.places.PlacesService(a)
                        , s = a.getBounds()
                        , o = new Array;
                    switch (r) {
                        case "transportations":
                            o = ["bus_station", "subway_station", "train_station", "airport"];
                            break;
                        case "supermarkets":
                            o = ["grocery_or_supermarket", "shopping_mall"];
                            break;
                        case "schools":
                            o = ["school", "university"];
                            break;
                        case "libraries":
                            o = ["library"];
                            break;
                        case "pharmacies":
                            o = ["pharmacy"];
                            break;
                        case "hospitals":
                            o = ["hospital"]
                    }
                    t.nearbySearch({
                        location: e,
                        bounds: s,
                        radius: 2e3,
                        types: o
                    }, function (e, t) {
                        if (t === google.maps.places.PlacesServiceStatus.OK)
                            for (var s = 0; s < e.length; s++)
                                -1 == jQuery.inArray(e[s].place_id, placesIDs) && (houzezCreatePOI(e[s], a, r),
                                    placesIDs.push(e[s].place_id))
                    })
                }
                , houzezCreatePOI = function (e, a, r) {
                    var t;
                    switch (r) {
                        case "transportations":
                            t = new google.maps.Marker({
                                map: a,
                                position: e.geometry.location,
                                icon: map_icons_path + "transportation.png"
                            }),
                                transportationsMarkers.push(t);
                            break;
                        case "supermarkets":
                            t = new google.maps.Marker({
                                map: a,
                                position: e.geometry.location,
                                icon: map_icons_path + "supermarket.png"
                            }),
                                supermarketsMarkers.push(t);
                            break;
                        case "schools":
                            t = new google.maps.Marker({
                                map: a,
                                position: e.geometry.location,
                                icon: map_icons_path + "school.png"
                            }),
                                schoolsMarkers.push(t);
                            break;
                        case "libraries":
                            t = new google.maps.Marker({
                                map: a,
                                position: e.geometry.location,
                                icon: map_icons_path + "libraries.png"
                            }),
                                librariesMarkers.push(t);
                            break;
                        case "pharmacies":
                            t = new google.maps.Marker({
                                map: a,
                                position: e.geometry.location,
                                icon: map_icons_path + "pharmacy.png"
                            }),
                                pharmaciesMarkers.push(t);
                            break;
                        case "hospitals":
                            t = new google.maps.Marker({
                                map: a,
                                position: e.geometry.location,
                                icon: map_icons_path + "hospital.png"
                            }),
                                hospitalsMarkers.push(t)
                    }
                    google.maps.event.addListener(t, "mouseover", function () {
                        poiInfo.setContent(e.name),
                            poiInfo.open(a, this)
                    }),
                        google.maps.event.addListener(t, "mouseout", function () {
                            poiInfo.open(null, null)
                        })
                }
                , houzezTooglePOIs = function (e, a) {
                    for (var r = 0; r < a.length; r++)
                        null != a[r].getMap() ? a[r].setMap(null) : a[r].setMap(e)
                }
                , houzezPoiControls = function (e, a, r) {
                    e.style.clear = "both";
                    var t = document.createElement("div");
                    t.id = "transportation",
                        t.class = "transportation",
                        t.title = transportation,
                        e.appendChild(t);
                    var s = document.createElement("div");
                    s.id = "transportationIcon",
                        s.innerHTML = '<div class="icon"><img src="' + map_icons_path + 'transportation-panel-icon.png" alt=""></div><span>' + transportation + "</span>",
                        t.appendChild(s);
                    var o = document.createElement("div");
                    o.id = "supermarkets",
                        o.title = supermarket,
                        e.appendChild(o);
                    var n = document.createElement("div");
                    n.id = "supermarketsIcon",
                        n.innerHTML = '<div class="icon"><img src="' + map_icons_path + 'supermarket-panel-icon.png" alt=""></div><span>' + supermarket + "</span>",
                        o.appendChild(n);
                    var i = document.createElement("div");
                    i.id = "schools",
                        i.title = schools,
                        e.appendChild(i);
                    var c = document.createElement("div");
                    c.id = "schoolsIcon",
                        c.innerHTML = '<div class="icon"><img src="' + map_icons_path + 'school-panel-icon.png" alt=""></div><span>' + schools + "</span>",
                        i.appendChild(c);
                    var l = document.createElement("div");
                    l.id = "libraries",
                        l.title = libraries,
                        e.appendChild(l);
                    var p = document.createElement("div");
                    p.id = "librariesIcon",
                        p.innerHTML = '<div class="icon"><img src="' + map_icons_path + 'libraries-panel-icon.png" alt=""></div><span>' + libraries + "</span>",
                        l.appendChild(p);
                    var _ = document.createElement("div");
                    _.id = "pharmacies",
                        _.title = pharmacies,
                        e.appendChild(_);
                    var d = document.createElement("div");
                    d.id = "pharmaciesIcon",
                        d.innerHTML = '<div class="icon"><img src="' + map_icons_path + 'pharmacy-panel-icon.png" alt=""></div><span>' + pharmacies + "</span>",
                        _.appendChild(d);
                    var u = document.createElement("div");
                    u.id = "hospitals",
                        u.title = hospitals,
                        e.appendChild(u);
                    var m = document.createElement("div");
                    m.id = "hospitalsIcon",
                        m.innerHTML = '<div class="icon"><img src="' + map_icons_path + 'hospital-panel-icon.png" alt=""></div><span>' + hospitals + "</span>",
                        u.appendChild(m),
                        t.addEventListener("click", function () {
                            var e = this;
                            $(this).hasClass("active") ? ($(this).removeClass("active"),
                                houzezTooglePOIs(a, transportationsMarkers)) : ($(this).addClass("active"),
                                    houzezGetPOIs(r, a, "transportations"),
                                    houzezTooglePOIs(a, transportationsMarkers)),
                                google.maps.event.addListener(a, "bounds_changed", function () {
                                    if ($(e).hasClass("active")) {
                                        var r = a.getCenter();
                                        houzezGetPOIs(r, a, "transportations")
                                    }
                                })
                        }),
                        o.addEventListener("click", function () {
                            var e = this;
                            $(this).hasClass("active") ? ($(this).removeClass("active"),
                                houzezTooglePOIs(a, supermarketsMarkers)) : ($(this).addClass("active"),
                                    houzezGetPOIs(r, a, "supermarkets"),
                                    houzezTooglePOIs(a, supermarketsMarkers)),
                                google.maps.event.addListener(a, "bounds_changed", function () {
                                    if ($(e).hasClass("active")) {
                                        var r = a.getCenter();
                                        houzezGetPOIs(r, a, "supermarkets")
                                    }
                                })
                        }),
                        i.addEventListener("click", function () {
                            var e = this;
                            $(this).hasClass("active") ? ($(this).removeClass("active"),
                                houzezTooglePOIs(a, schoolsMarkers)) : ($(this).addClass("active"),
                                    houzezGetPOIs(r, a, "schools"),
                                    houzezTooglePOIs(a, schoolsMarkers)),
                                google.maps.event.addListener(a, "bounds_changed", function () {
                                    if ($(e).hasClass("active")) {
                                        var r = a.getCenter();
                                        houzezGetPOIs(r, a, "schools")
                                    }
                                })
                        }),
                        l.addEventListener("click", function () {
                            var e = this;
                            $(this).hasClass("active") ? ($(this).removeClass("active"),
                                houzezTooglePOIs(a, librariesMarkers)) : ($(this).addClass("active"),
                                    houzezGetPOIs(r, a, "libraries"),
                                    houzezTooglePOIs(a, librariesMarkers)),
                                google.maps.event.addListener(a, "bounds_changed", function () {
                                    if ($(e).hasClass("active")) {
                                        var r = a.getCenter();
                                        houzezGetPOIs(r, a, "libraries")
                                    }
                                })
                        }),
                        _.addEventListener("click", function () {
                            var e = this;
                            $(this).hasClass("active") ? ($(this).removeClass("active"),
                                houzezTooglePOIs(a, pharmaciesMarkers)) : ($(this).addClass("active"),
                                    houzezGetPOIs(r, a, "pharmacies"),
                                    houzezTooglePOIs(a, pharmaciesMarkers)),
                                google.maps.event.addListener(a, "bounds_changed", function () {
                                    if ($(e).hasClass("active")) {
                                        var r = a.getCenter();
                                        houzezGetPOIs(r, a, "pharmacies")
                                    }
                                })
                        }),
                        u.addEventListener("click", function () {
                            var e = this;
                            $(this).hasClass("active") ? ($(this).removeClass("active"),
                                houzezTooglePOIs(a, hospitalsMarkers)) : ($(this).addClass("active"),
                                    houzezGetPOIs(r, a, "hospitals"),
                                    houzezTooglePOIs(a, hospitalsMarkers)),
                                google.maps.event.addListener(a, "bounds_changed", function () {
                                    if ($(e).hasClass("active")) {
                                        var r = a.getCenter();
                                        houzezGetPOIs(r, a, "hospitals")
                                    }
                                })
                        })
                }
                , houzezSetPOIControls = function (e, a) {
                    var r = document.createElement("div");
                    new houzezPoiControls(r, e, a);
                    r.index = 1,
                        r.style["padding-left"] = "10px",
                        e.controls[google.maps.ControlPosition.LEFT_BOTTOM].push(r)
                }
        }
        if (1 == has_compare) {
            var compare_panel = function () {
                $(".panel-btn").on("click", function () {
                    $(".compare-panel").hasClass("panel-open") ? $(".compare-panel").removeClass("panel-open") : $(".compare-panel").addClass("panel-open")
                })
            }
                , compare_panel_close = function () {
                    $(".compare-panel").hasClass("panel-open") && $(".compare-panel").removeClass("panel-open")
                }
                , compare_panel_open = function () {
                    $(".compare-panel").addClass("panel-open")
                }
                , houzez_compare_listing = function () {
                    $(".compare-property").click(function (e) {
                        e.preventDefault();
                        var a = $(this)
                            , r = {
                                action: "houzez_compare_add_property",
                                prop_id: a.attr("data-propid")
                            };
                        a.find("i.fa-plus").addClass("fa-spin"),
                            $.post(ajaxurl, r, function (e) {
                                var r = {
                                    action: "houzez_compare_update_basket"
                                };
                                a.find("i.fa-plus").removeClass("fa-spin"),
                                    $.post(ajaxurl, r, function (e) {
                                        $("div#compare-properties-basket").replaceWith(e),
                                            compare_panel(),
                                            compare_panel_open()
                                    })
                            })
                    })
                };
            houzez_compare_listing(),
                $(document).on("click", "#compare-properties-basket .compare-property-remove", function (e) {
                    e.preventDefault();
                    var a = jQuery(this).parent().attr("property-id");
                    $(this).parent().block({
                        message: '<i class="' + process_loader_spinner + '"></i>',
                        css: {
                            border: "none",
                            backgroundColor: "none",
                            fontSize: "16px"
                        }
                    });
                    var r = {
                        action: "houzez_compare_add_property",
                        prop_id: a
                    };
                    $.post(ajaxurl, r, function (e) {
                        var a = {
                            action: "houzez_compare_update_basket"
                        };
                        $.post(ajaxurl, a, function (e) {
                            $("div#compare-properties-basket").replaceWith(e),
                                compare_panel()
                        })
                    })
                }),
                jQuery(document).on("click", ".compare-properties-button", function () {
                    return "" != compare_button_url ? window.location.href = compare_button_url : alert(compare_page_not_found),
                        !1
                })
        }
        if ($("#houzez-print").length > 0 && $("#houzez-print").click(function (e) {
            e.preventDefault();
            var propID, printWindow;
            propID = $(this).attr("data-propid"),
                printWindow = window.open("", "Print Me", "width=700 ,height=842"),
                $.ajax({
                    type: "POST",
                    url: ajaxurl,
                    data: {
                        action: "houzez_create_print",
                        propid: propID
                    },
                    success: function (e) {
                        printWindow.document.write(e),
                            printWindow.document.close(),
                            printWindow.focus()
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
        }),
            houzez_rtl) {
            var visual_composer_stretch_row = function () {
                var e = $('[data-vc-full-width="true"]');
                $.each(e, function (e, a) {
                    var r = $(this);
                    r.addClass("vc_hidden");
                    var t = r.next(".vc_row-full-width")
                        , s = parseInt(r.css("margin-left"), 10)
                        , o = parseInt(r.css("margin-right"), 10)
                        , n = 0 - t.offset().left - s
                        , i = $(window).width();
                    if (r.css({
                        position: "relative",
                        left: n,
                        right: n,
                        "box-sizing": "border-box",
                        width: $(window).width()
                    }),
                        !r.data("vcStretchContent")) {
                        var c = -1 * n;
                        0 > c && (c = 0);
                        var l = i - c - t.width() + s + o;
                        0 > l && (l = 0),
                            r.css({
                                "padding-left": c + "px",
                                "padding-right": l + "px"
                            })
                    }
                    r.attr("data-vc-full-width-init", "true"),
                        r.removeClass("vc_hidden")
                })
            };
            visual_composer_stretch_row(),
                $(window).resize(function () {
                    visual_composer_stretch_row()
                })
        }
        var view_btn = $(".view-btn ");
        view_btn.length > 0 && (view_btn.click(function () {
            $.removeCookie("properties-layout"),
                $.removeCookie("layout-btn"),
                $(this).hasClass("btn-list") ? ($.cookie("properties-layout", "list-view"),
                    $.cookie("layout-btn", "btn-list")) : $(this).hasClass("btn-grid") ? ($.cookie("properties-layout", "grid-view"),
                        $.cookie("layout-btn", "btn-grid")) : $(this).hasClass("btn-grid-3-col") && ($.cookie("properties-layout", "grid-view-3-col"),
                            $.cookie("layout-btn", "btn-grid-3-col"))
        }),
            "undefined" != $.cookie("properties-layout") && ("list-view" == $.cookie("properties-layout") && "template-search.php" != fave_page_template && "user_dashboard_favorites.php" != fave_page_template ? ($(".property-listing").removeClass("grid-view grid-view-3-col"),
                $(".property-listing").addClass("list-view")) : "grid-view" == $.cookie("properties-layout") && "template-search.php" != fave_page_template && "user_dashboard_favorites.php" != fave_page_template ? ($(".property-listing").removeClass("list-view grid-view grid-view-3-col"),
                    $(".property-listing").addClass("grid-view")) : "grid-view-3-col" == $.cookie("properties-layout") && "template-search.php" != fave_page_template && "user_dashboard_favorites.php" != fave_page_template && ($(".property-listing").removeClass("list-view grid-view"),
                        $(".property-listing").addClass("grid-view grid-view-3-col"))),
            "undefined" != $.cookie("layout-btn") && ("btn-list" == $.cookie("layout-btn") ? ($(".view-btn").removeClass("active"),
                $(".view-btn.btn-list").addClass("active")) : "btn-grid" == $.cookie("layout-btn") ? ($(".view-btn").removeClass("active"),
                    $(".view-btn.btn-grid").addClass("active")) : "btn-grid-3-col" == $.cookie("layout-btn") && ($(".view-btn").removeClass("active"),
                        $(".view-btn.btn-grid-3-col").addClass("active"))));
        var addCommas = function (e) {
            for (var a = (e += "").split("."), r = a[0], t = a.length > 1 ? "." + a[1] : "", s = /(\d+)(\d{3})/; s.test(r);)
                r = r.replace(s, "$1" + thousands_separator + "$2");
            return r + t
        }
            , properties_module_section = $("#properties_module_section");
        if (properties_module_section.length > 0) {
            var properties_module_container = $("#properties_module_container")
                , paginationLink = $(".property-item-module ul.pagination li a")
                , fave_loader = $(".fave-svg-loader");
            $("body").on("click", ".fave-load-more a", function (e) {
                e.preventDefault();
                var a = $(this)
                    , r = a.attr("href")
                    , t = 0;
                a.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>'),
                    $("<div>").load(r, function () {
                        var e = t.toString()
                            , s = a.closest("#properties_module_section").find("#module_properties");
                        return $(this).find("#properties_module_section .item-wrap").addClass("fave-post-new-" + e).hide().appendTo(s).fadeIn(400),
                            $(this).find(".fave-load-more").length ? a.closest("#properties_module_section").find(".fave-load-more").html($(this).find(".fave-load-more").html()) : a.closest("#properties_module_section").find(".fave-load-more").fadeOut("fast").remove(),
                            r != window.location && window.history.pushState({
                                path: r
                            }, "", r),
                            t++ ,
                            houzez_compare_listing(),
                            !1
                    })
            })
        }
        var fave_property_status_changed = function (e, a) {
            e == HOUZEZ_ajaxcalls_vars.for_rent ? (a.find(".prices-for-all").addClass("hide"),
                a.find(".prices-for-all select").attr("disabled", "disabled"),
                a.find(".prices-only-for-rent").removeClass("hide"),
                a.find(".prices-only-for-rent select").removeAttr("disabled", "disabled"),
                a.find(".prices-only-for-rent select").selectpicker("refresh")) : (a.find(".prices-only-for-rent").addClass("hide"),
                    a.find(".prices-only-for-rent select").attr("disabled", "disabled"),
                    a.find(".prices-for-all").removeClass("hide"),
                    a.find(".prices-for-all select").removeAttr("disabled", "disabled"))
        };
        $('select[name="status"]').change(function (e) {
            var a = $(this).val()
                , r = $(this).parents("form");
            fave_property_status_changed(a, r)
        });
        var selected_status_header_search = $('select[name="status"]').val();
        if (selected_status_header_search == HOUZEZ_ajaxcalls_vars.for_rent || "" == selected_status_header_search) {
            var $form = $(".advance-search-header");
            fave_property_status_changed(selected_status_header_search, $form)
        }
        $(".advanced-search-mobile #selected_status_mobile").change(function (e) {
            var a = $(this).val()
                , r = $(this).parents("form");
            fave_property_status_changed(a, r)
        });
        var selected_status_header_search = $(".advanced-search-mobile #selected_status_mobile").val();
        if (selected_status_header_search == HOUZEZ_ajaxcalls_vars.for_rent || "" == selected_status_header_search) {
            var $form = $(".advanced-search-mobile");
            fave_property_status_changed(selected_status_header_search, $form)
        }
        $(".advanced-search-module #selected_status_module").change(function (e) {
            var a = $(this).val()
                , r = $(this).parents("form");
            fave_property_status_changed(a, r)
        });
        var selected_status_module_search = $(".advanced-search-module #selected_status_module").val();
        if (selected_status_module_search == HOUZEZ_ajaxcalls_vars.for_rent || "" == selected_status_module_search) {
            var $form = $(".advanced-search-module");
            fave_property_status_changed(selected_status_module_search, $form)
        }
        $("#save_search_click").click(function (e) {
            e.preventDefault();
            var $this = $(this)
                , $from = $(".save_search_form");
            0 === parseInt(userID, 10) ? $("#pop-login").modal("show") : $.ajax({
                url: ajaxurl,
                data: $from.serialize(),
                method: $from.attr("method"),
                dataType: "JSON",
                beforeSend: function () {
                    $this.children("i").remove(),
                        $this.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>')
                },
                success: function (e) {
                    e.success && $("#save_search_click").addClass("saved")
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                },
                complete: function () {
                    $this.children("i").removeClass(process_loader_spinner)
                }
            })
        }),
            $(".remove-search").click(function (e) {
                e.preventDefault();
                var $this = $(this)
                    , prop_id = $this.data("propertyid")
                    , removeBlock = $this.parents(".saved-search-block");
                confirm(confirm_message) && $.ajax({
                    url: ajaxurl,
                    dataType: "JSON",
                    method: "POST",
                    data: {
                        action: "houzez_delete_search",
                        property_id: prop_id
                    },
                    beforeSend: function () {
                        $this.children("i").remove(),
                            $this.prepend('<i class="' + process_loader_spinner + '"></i>')
                    },
                    success: function (e) {
                        e.success && removeBlock.remove()
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
            }),
            $(".agent_contact_form").click(function (e) {
                e.preventDefault();
                var $this = $(this)
                    , $form = $this.parents("form")
                    , $result = $form.find(".form_messages");
                $.ajax({
                    url: ajaxurl,
                    data: $form.serialize(),
                    method: $form.attr("method"),
                    dataType: "JSON",
                    beforeSend: function () {
                        $this.children("i").remove(),
                            $this.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>')
                    },
                    success: function (e) {
                        e.success ? ($result.empty().append(e.msg),
                            $form.find("input").val(""),
                            $form.find("textarea").val("")) : $result.empty().append(e.msg)
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    },
                    complete: function () {
                        $this.children("i").removeClass(process_loader_spinner),
                            $this.children("i").addClass(success_icon)
                    }
                })
            }),
            $("#agent_detail_contact_btn").click(function (e) {
                e.preventDefault();
                var current_element = $(this)
                    , $this = $(this)
                    , $form = $this.parents("form");
                jQuery.ajax({
                    type: "post",
                    url: ajaxurl,
                    data: $form.serialize(),
                    method: $form.attr("method"),
                    dataType: "JSON",
                    beforeSend: function () {
                        current_element.children("i").remove(),
                            current_element.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>')
                    },
                    success: function (e) {
                        current_element.children("i").removeClass(process_loader_spinner),
                            e.success ? ($("#form_messages").empty().append(e.msg),
                                current_element.children("i").addClass(success_icon)) : $("#form_messages").empty().append(e.msg)
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
            }),
            $(".schedule_contact_form").click(function (e) {
                e.preventDefault();
                var $this = $(this)
                    , $form = $this.parents("form")
                    , $result = $form.find(".form_messages");
                $.ajax({
                    url: ajaxurl,
                    data: $form.serialize(),
                    method: $form.attr("method"),
                    dataType: "JSON",
                    beforeSend: function () {
                        $this.children("i").remove(),
                            $this.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>')
                    },
                    success: function (e) {
                        e.success ? ($result.empty().append(e.msg),
                            $form.find("input").val(""),
                            $form.find("textarea").val("")) : $result.empty().append(e.msg)
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    },
                    complete: function () {
                        $this.children("i").removeClass(process_loader_spinner),
                            $this.children("i").addClass(success_icon)
                    }
                })
            }),
            $(".resend-for-approval-perlisting").click(function (e) {
                e.preventDefault();
                var a = $(this).attr("data-propid");
                resend_for_approval_perlisting(a, $(this)),
                    $(this).unbind("click")
            });
        var resend_for_approval_perlisting = function (prop_id, currentDiv) {
            $.ajax({
                type: "POST",
                url: ajaxurl,
                dataType: "JSON",
                data: {
                    action: "houzez_resend_for_approval_perlisting",
                    propid: prop_id
                },
                success: function (e) {
                    e.success ? currentDiv.parent().empty().append('<span class="label-success label">' + e.msg + "</span>") : currentDiv.parent().empty().append('<div class="alert alert-danger">' + e.msg + "</div>")
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        }
            , houzez_init_add_favorite = function () {
                $(".add_fav").click(function () {
                    var e = $(this).children("i")
                        , a = $(this).attr("data-propid");
                    add_to_favorite(a, e)
                })
            };
        houzez_init_add_favorite();
        var houzez_init_remove_favorite = function () {
            $(".remove_fav").click(function () {
                var e = $(this)
                    , a = $(this).attr("data-propid");
                add_to_favorite(a, e);
                e.parents(".item-wrap").remove()
            })
        };
        houzez_init_remove_favorite();
        var add_to_favorite = function (propID, curnt) {
            0 === parseInt(userID, 10) ? $("#pop-login").modal("show") : jQuery.ajax({
                type: "post",
                url: ajaxurl,
                dataType: "json",
                data: {
                    action: "houzez_add_to_favorite",
                    property_id: propID
                },
                beforeSend: function () {
                    curnt.addClass("faa-pulse animated")
                },
                success: function (e) {
                    e.added ? curnt.removeClass("fa-heart-o").addClass("fa-heart") : curnt.removeClass("fa-heart").addClass("fa-heart-o"),
                        curnt.removeClass("faa-pulse animated")
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        };
        $(".fave-login-button").click(function (e) {
            e.preventDefault();
            var a = $(this);
            houzez_login(a)
        }),
            $(".fave-register-button").click(function (e) {
                e.preventDefault();
                var a = $(this);
                houzez_register(a)
            });
        var houzez_login = function (currnt) {
            var $form = currnt.parents("form")
                , $messages = currnt.parents(".login-block").find(".houzez_messages");
            $.ajax({
                type: "post",
                url: ajaxurl,
                dataType: "json",
                data: $form.serialize(),
                beforeSend: function () {
                    $messages.empty().append('<p class="success text-success"> ' + login_sending + "</p>")
                },
                success: function (e) {
                    e.success ? ($messages.empty().append('<p class="success text-success"><i class="fa fa-check"></i> ' + e.msg + "</p>"),
                        "same_page" == login_redirect_type ? window.location.reload() : window.location.href = login_redirect) : $messages.empty().append('<p class="error text-danger"><i class="fa fa-close"></i> ' + e.msg + "</p>")
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        }
            , houzez_register = function (currnt) {
                var $form = currnt.parents("form")
                    , $messages = currnt.parents(".class-for-register-msg").find(".houzez_messages_register");
                $.ajax({
                    type: "post",
                    url: ajaxurl,
                    dataType: "json",
                    data: $form.serialize(),
                    beforeSend: function () {
                        $messages.empty().append('<p class="success text-success"> ' + login_sending + "</p>")
                    },
                    success: function (e) {
                        e.success ? $messages.empty().append('<p class="success text-success"><i class="fa fa-check"></i> ' + e.msg + "</p>") : $messages.empty().append('<p class="error text-danger"><i class="fa fa-close"></i> ' + e.msg + "</p>")
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
            };
        $("#houzez_forgetpass").click(function () {
            var user_login = $("#user_login_forgot").val()
                , security = $("#fave_resetpassword_security").val();
            $.ajax({
                type: "post",
                url: ajaxurl,
                dataType: "json",
                data: {
                    action: "houzez_reset_password",
                    user_login: user_login,
                    security: security
                },
                beforeSend: function () {
                    $("#houzez_msg_reset").empty().append('<p class="success text-success"> ' + login_sending + "</p>")
                },
                success: function (e) {
                    e.success ? $("#houzez_msg_reset").empty().append('<p class="success text-success"><i class="fa fa-check"></i> ' + e.msg + "</p>") : $("#houzez_msg_reset").empty().append('<p class="error text-danger"><i class="fa fa-close"></i> ' + e.msg + "</p>")
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        }),
            $("#houzez_reset_password").length > 0 && $("#houzez_reset_password").click(function (e) {
                e.preventDefault();
                var a = $(this)
                    , r = $('input[name="rp_login"]').val()
                    , t = $('input[name="rp_key"]').val()
                    , s = $('input[name="pass1"]').val()
                    , o = $('input[name="pass2"]').val()
                    , n = $('input[name="fave_resetpassword_security"]').val();
                $.ajax({
                    type: "post",
                    url: ajaxurl,
                    dataType: "json",
                    data: {
                        action: "houzez_reset_password_2",
                        rq_login: r,
                        password: s,
                        confirm_pass: o,
                        rp_key: t,
                        security: n
                    },
                    beforeSend: function () {
                        a.children("i").remove(),
                            a.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>')
                    },
                    success: function (e) {
                        e.success ? (jQuery("#password_reset_msgs").empty().append('<p class="success text-success"><i class="fa fa-check"></i> ' + e.msg + "</p>"),
                            jQuery("#oldpass, #newpass, #confirmpass").val("")) : jQuery("#password_reset_msgs").empty().append('<p class="error text-danger"><i class="fa fa-close"></i> ' + e.msg + "</p>")
                    },
                    error: function (e) { },
                    complete: function () {
                        a.children("i").removeClass(process_loader_spinner)
                    }
                })
            }),
            $("#houzez_complete_order").click(function (e) {
                e.preventDefault();
                var a, r, t, s, o, n;
                r = $("input[name='houzez_payment_type']:checked").val(),
                    o = $("input[name='featured_pay']").val(),
                    n = $("input[name='is_upgrade']").val(),
                    s = $("#houzez_property_id").val(),
                    t = $("#houzez_listing_price").val(),
                    "paypal" == r ? (fave_processing_modal(paypal_connecting),
                        fave_paypal_payment(s, o, n)) : "stripe" == r ? (a = $(this).parents("form"),
                            "1" === o ? a.find(".houzez_stripe_simple_featured button").trigger("click") : a.find(".houzez_stripe_simple button").trigger("click")) : "direct_pay" == r && (fave_processing_modal(direct_pay_text),
                                direct_bank_transfer(s, t))
            });
        var fave_processing_modal = function (e) {
            var a = '<div class="modal fade" id="fave_modal" tabindex="-1" role="dialog" aria-labelledby="faveModalLabel" aria-hidden="true"><div class="modal-dialog"><div class="modal-content"><div class="modal-body houzez_messages_modal">' + e + "</div></div></div></div></div>";
            jQuery("body").append(a),
                jQuery("#fave_modal").modal()
        }
            , fave_processing_modal_close = function () {
                jQuery("#fave_modal").modal("hide")
            }
            , fave_paypal_payment = function (property_id, is_prop_featured, is_prop_upgrade) {
                $.ajax({
                    type: "post",
                    url: ajaxurl,
                    data: {
                        action: "houzez_property_paypal_payment",
                        prop_id: property_id,
                        is_prop_featured: is_prop_featured,
                        is_prop_upgrade: is_prop_upgrade
                    },
                    success: function (e) {
                        window.location.href = e
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
            }
            , houzez_membership_data = function (e) {
                var a = $("input[name='houzez_payment_type']:checked").val()
                    , r = $("input[name='houzez_package_price']").val()
                    , t = $("input[name='houzez_package_id']").val()
                    , s = $("#houzez_package_name").text();
                return "paypal" == a ? (fave_processing_modal(paypal_connecting),
                    $("#paypal_package_recurring").is(":checked") ? houzez_recuring_paypal_package_payment(r, s, t) : houzez_paypal_package_payment(r, s, t)) : "mollie" == a ? (fave_processing_modal(mollie_connecting),
                        houzez_mollie_package_payment(r, s, t)) : "stripe" == a ? e.parents("form").find(".houzez_stripe_membership button").trigger("click") : "direct_pay" == a ? (fave_processing_modal(direct_pay_text),
                            direct_bank_transfer_package(t, r, s)) : "2checkout" == a || (fave_processing_modal(direct_pay_text),
                                houzez_free_membership_package(t)),
                    !1
            }
            , houzez_register_user_with_membership = function (currnt) {
                var $form = currnt.parents("form")
                    , $messages = currnt.parents(".class-for-register-msg").find(".houzez_messages_register");
                $.ajax({
                    type: "post",
                    url: ajaxurl,
                    dataType: "json",
                    data: $form.serialize(),
                    beforeSend: function () {
                        $messages.empty().append('<p class="success text-success"> ' + login_sending + "</p>")
                    },
                    success: function (e) {
                        e.success ? houzez_membership_data(currnt) : $messages.empty().append('<p class="error text-danger"><i class="fa fa-close"></i> ' + e.msg + "</p>")
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
            };
        $("#houzez_complete_membership").click(function (e) {
            e.preventDefault();
            var a = $(this);
            "no" != houzez_logged_in ? houzez_membership_data(a) : houzez_register_user_with_membership(a)
        });
        var houzez_paypal_package_payment = function (houzez_package_price, houzez_package_name, houzez_package_id) {
            $.ajax({
                type: "POST",
                url: ajaxurl,
                data: {
                    action: "houzez_paypal_package_payment",
                    houzez_package_price: houzez_package_price,
                    houzez_package_name: houzez_package_name,
                    houzez_package_id: houzez_package_id
                },
                success: function (e) {
                    window.location.href = e
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        }
            , houzez_recuring_paypal_package_payment = function (houzez_package_price, houzez_package_name, houzez_package_id) {
                jQuery.ajax({
                    type: "POST",
                    url: ajaxurl,
                    data: {
                        action: "houzez_recuring_paypal_package_payment",
                        houzez_package_name: houzez_package_name,
                        houzez_package_id: houzez_package_id,
                        houzez_package_price: houzez_package_price
                    },
                    success: function (e) {
                        window.location.href = e
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
            }
            , houzez_mollie_package_payment = function (houzez_package_price, houzez_package_name, houzez_package_id) {
                $.ajax({
                    type: "POST",
                    url: ajaxurl,
                    data: {
                        action: "houzez_mollie_package_payment",
                        houzez_package_price: houzez_package_price,
                        houzez_package_name: houzez_package_name,
                        houzez_package_id: houzez_package_id
                    },
                    success: function (e) {
                        window.location.href = e
                    },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
            }
            , direct_bank_transfer_package = function (e, a, r) {
                jQuery.ajax({
                    type: "POST",
                    url: ajaxurl,
                    data: {
                        action: "houzez_direct_pay_package",
                        selected_package: e
                    },
                    success: function (e) {
                        window.location.href = e
                    },
                    error: function (e) { }
                })
            }
            , houzez_free_membership_package = function (e) {
                jQuery.ajax({
                    type: "POST",
                    url: ajaxurl,
                    data: {
                        action: "houzez_free_membership_package",
                        selected_package: e
                    },
                    success: function (e) {
                        window.location.href = e
                    },
                    error: function (e) { }
                })
            };
        $(".resend-for-approval").click(function (e) {
            if (e.preventDefault(),
                confirm(confirm_relist)) {
                var a = $(this).attr("data-propid");
                resend_for_approval(a, $(this)),
                    $(this).unbind("click")
            }
        });
        var resend_for_approval = function (prop_id, currentDiv) {
            $.ajax({
                type: "POST",
                url: ajaxurl,
                dataType: "JSON",
                data: {
                    action: "houzez_resend_for_approval",
                    propid: prop_id
                },
                success: function (e) {
                    if (e.success) {
                        currentDiv.parent().empty().append('<span class="label-success label">' + e.msg + "</span>");
                        var a = parseInt(jQuery(".listings_remainings").text(), 10);
                        jQuery(".listings_remainings").text(a - 1)
                    } else
                        currentDiv.parent().empty().append('<div class="alert alert-danger">' + e.msg + "</div>")
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        };
        $(".make-prop-featured").click(function (e) {
            if (e.preventDefault(),
                confirm(confirm_featured)) {
                var a = $(this).attr("data-propid")
                    , r = $(this).attr("data-proptype");
                make_prop_featured(a, $(this), r),
                    $(this).unbind("click")
            }
        });
        var make_prop_featured = function (prop_id, currentDiv, prop_type) {
            $.ajax({
                type: "POST",
                url: ajaxurl,
                dataType: "JSON",
                data: {
                    action: "houzez_make_prop_featured",
                    propid: prop_id,
                    prop_type: prop_type
                },
                success: function (e) {
                    if (e.success) {
                        currentDiv.parents(".item-wrap").find(".item-thumb").append('<span class="label-featured label">' + fave_prop_featured + "</span>"),
                            currentDiv.remove();
                        var a = parseInt(jQuery(".featured_listings_remaining").text(), 10);
                        jQuery(".featured_listings_remaining").text(a - 1)
                    } else
                        currentDiv.parent().empty().append('<div class="alert alert-danger">' + featured_listings_none + "</div>")
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        };
        $(".remove-prop-featured").click(function (e) {
            if (e.preventDefault(),
                confirm(confirm_featured_remove)) {
                var a = $(this).attr("data-propid");
                remove_prop_featured(a, $(this)),
                    $(this).unbind("click")
            }
        });
        var remove_prop_featured = function (prop_id, currentDiv) {
            $.ajax({
                type: "POST",
                url: ajaxurl,
                dataType: "JSON",
                data: {
                    action: "houzez_remove_prop_featured",
                    propid: prop_id
                },
                success: function (e) {
                    e.success && (currentDiv.parents(".item-wrap").find(".label-featured").remove(),
                        currentDiv.remove())
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        }
            , direct_bank_transfer = function (e, a) {
                var r = $('input[name="featured_pay"]').val()
                    , t = $('input[name="is_upgrade"]').val();
                jQuery.ajax({
                    type: "POST",
                    url: ajaxurl,
                    data: {
                        action: "houzez_direct_pay_per_listing",
                        prop_id: e,
                        is_featured: r,
                        is_upgrade: t
                    },
                    success: function (e) {
                        window.location.href = e
                    },
                    error: function (e) { }
                })
            };
        $(".yahoo-login").click(function () {
            var e = $(this);
            houzez_login_via_yahoo(e)
        });
        var houzez_login_via_yahoo = function (current) {
            var $form = current.parents("form")
                , $messages = current.parents(".login-block").find(".houzez_messages");
            $.ajax({
                type: "POST",
                url: ajaxurl,
                data: {
                    action: "houzez_yahoo_login"
                },
                beforeSend: function () {
                    $messages.empty().append('<p class="success text-success"> ' + login_sending + "</p>")
                },
                success: function (e) {
                    window.location.href = e
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        };
        $(".google-login").click(function () {
            var e = $(this);
            houzez_login_via_google(e)
        });
        var houzez_login_via_google = function (current) {
            var $form = current.parents("form")
                , $messages = current.parents(".login-block").find(".houzez_messages");
            $.ajax({
                type: "POST",
                url: ajaxurl,
                data: {
                    action: "houzez_google_login_oauth"
                },
                beforeSend: function () {
                    $messages.empty().append('<p class="success text-success"> ' + login_sending + "</p>")
                },
                success: function (e) {
                    window.location.href = e
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        };
        $(".facebook-login").click(function () {
            var e = $(this);
            houzez_login_via_facebook(e)
        });
        var houzez_login_via_facebook = function (current) {
            var $form = current.parents("form")
                , $messages = current.parents(".login-block").find(".houzez_messages");
            $.ajax({
                type: "POST",
                url: ajaxurl,
                data: {
                    action: "houzez_facebook_login_oauth"
                },
                beforeSend: function () {
                    $messages.empty().append('<p class="success text-success"> ' + login_sending + "</p>")
                },
                success: function (e) {
                    window.location.href = e
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        };
        $("#invoice_status, #invoice_type").change(function () {
            houzez_invoices_filter()
        }),
            $("#startDate, #endDate").focusout(function () {
                houzez_invoices_filter()
            });
        var houzez_invoices_filter = function () {
            var inv_status = $("#invoice_status").val()
                , inv_type = $("#invoice_type").val()
                , startDate = $("#startDate").val()
                , endDate = $("#endDate").val();
            $.ajax({
                url: ajaxurl,
                dataType: "json",
                type: "POST",
                data: {
                    action: "houzez_invoices_ajax_search",
                    invoice_status: inv_status,
                    invoice_type: inv_type,
                    startDate: startDate,
                    endDate: endDate
                },
                success: function (e) {
                    e.success && ($("#invoices_content").empty().append(e.result),
                        $("#invoices_total_price").empty().append(e.total_price))
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                }
            })
        }
            , houzezAddMarkers = function (e, a) {
                $.each(e, function (e, r) {
                    var t = new google.maps.LatLng(r.lat, r.lng)
                        , s = r.icon
                        , o = new google.maps.Size(44, 56);
                    window.devicePixelRatio > 1.5 && r.retinaIcon && (s = r.retinaIcon,
                        o = new google.maps.Size(44, 56));
                    var n = {
                        url: s,
                        size: o,
                        scaledSize: new google.maps.Size(44, 56),
                        origin: new google.maps.Point(0, 0),
                        anchor: new google.maps.Point(7, 27)
                    }
                        , i = new google.maps.Marker({
                            position: t,
                            map: a,
                            icon: n,
                            draggable: !1,
                            animation: google.maps.Animation.DROP
                        })
                        , c = r.data ? r.data.post_title : r.title
                        , l = r.prop_meta;
                    null == l && (l = "");
                    var p = document.createElement("div");
                    p.className = "property-item item-grid map-info-box",
                        p.innerHTML = '<div class="figure-block"><figure class="item-thumb"><div class="price hide-on-list"><span class="item-price">' + r.price + '</span></div><a href="' + r.url + '" class="hover-effect" tabindex="0">' + r.thumbnail + '</a></figure></div><div class="item-body"><div class="body-left"><div class="info-row"><h2><a target="_blank" href="' + r.url + '">' + c + "</a></h2><h4>" + r.address + '</h4></div><div class="table-list full-width info-row"><div class="cell"><div class="info-row amenities">' + l + "<p>" + r.type + "</p></div></div></div></div></div>",
                        google.maps.event.addListener(i, "click", function (e, r) {
                            return function () {
                                var r = 100 / Math.pow(2, a.getZoom()) || 0
                                    , t = a.getProjection()
                                    , s = e.getPosition()
                                    , o = t.fromLatLngToPoint(s)
                                    , n = new google.maps.Point(o.x, o.y - r)
                                    , i = t.fromPointToLatLng(n);
                                a.setCenter(i),
                                    infobox.setContent(p),
                                    infobox.open(a, e)
                            }
                        }(i)),
                        markers.push(i)
                })
            }
            , houzez_map_zoomin = function (e) {
                google.maps.event.addDomListener(document.getElementById("listing-mapzoomin"), "click", function () {
                    var a = parseInt(e.getZoom(), 10);
                    ++a > 20 && (a = 20),
                        e.setZoom(a)
                })
            }
            , houzez_map_zoomout = function (e) {
                google.maps.event.addDomListener(document.getElementById("listing-mapzoomout"), "click", function () {
                    var a = parseInt(e.getZoom(), 10);
                    --a < 0 && (a = 0),
                        e.setZoom(a)
                })
            }
            , houzez_change_map_type = function (e, a) {
                return "roadmap" === a ? e.setMapTypeId(google.maps.MapTypeId.ROADMAP) : "satellite" === a ? e.setMapTypeId(google.maps.MapTypeId.SATELLITE) : "hybrid" === a ? e.setMapTypeId(google.maps.MapTypeId.HYBRID) : "terrain" === a && e.setMapTypeId(google.maps.MapTypeId.TERRAIN),
                    !1
            }
            , houzez_map_next = function (e) {
                for (++current_marker > markers.length && (current_marker = 1); !1 === markers[current_marker - 1].visible;)
                    ++current_marker > markers.length && (current_marker = 1);
                e.getZoom() < 15 && e.setZoom(15),
                    google.maps.event.trigger(markers[current_marker - 1], "click")
            }
            , houzez_map_prev = function (e) {
                for (--current_marker < 1 && (current_marker = markers.length); !1 === markers[current_marker - 1].visible;)
                    --current_marker > markers.length && (current_marker = 1);
                e.getZoom() < 15 && e.setZoom(15),
                    google.maps.event.trigger(markers[current_marker - 1], "click")
            }
            , houzez_map_search_field = function (e, a) {
                var r = new google.maps.places.SearchBox(a);
                e.controls[google.maps.ControlPosition.TOP_LEFT].push(a),
                    e.addListener("bounds_changed", function () {
                        r.setBounds(e.getBounds())
                    });
                var t = [];
                r.addListener("places_changed", function () {
                    var a = r.getPlaces();
                    if (0 != a.length) {
                        t.forEach(function (e) {
                            e.setMap(null)
                        }),
                            t = [];
                        var s = new google.maps.LatLngBounds;
                        a.forEach(function (a) {
                            var r = {
                                url: a.icon,
                                size: new google.maps.Size(71, 71),
                                origin: new google.maps.Point(0, 0),
                                anchor: new google.maps.Point(17, 34),
                                scaledSize: new google.maps.Size(25, 25)
                            };
                            t.push(new google.maps.Marker({
                                map: e,
                                icon: r,
                                title: a.name,
                                position: a.geometry.location
                            })),
                                a.geometry.viewport ? s.union(a.geometry.viewport) : s.extend(a.geometry.location)
                        }),
                            e.fitBounds(s)
                    }
                })
            }
            , houzez_map_parallax = function (e) {
                var a = $(e.getDiv()).offset();
                e.panBy((houzezHeaderMapOptions.scroll.x - a.left) / 3, (houzezHeaderMapOptions.scroll.y - a.top) / 3),
                    google.maps.event.addDomListener(window, "scroll", function () {
                        var a = $(window).scrollTop()
                            , r = $(window).scrollLeft()
                            , t = e.get("scroll");
                        t && e.panBy(-(t.x - r) / 3, -(t.y - a) / 3),
                            e.set("scroll", {
                                x: r,
                                y: a
                            })
                    })
            }
            , reloadMarkers = function () {
                for (var e = 0; e < markers.length; e++)
                    markers[e].setMap(null);
                markers = []
            }
            , houzezGeoLocation = function (e) {
                var a = !0;
                !!window.chrome && !!window.chrome.webstore && "http:" === document.location.protocol && 0 != ipinfo_location && (a = !1),
                    a ? navigator.geolocation && navigator.geolocation.getCurrentPosition(function (a) {
                        var r = {
                            lat: a.coords.latitude,
                            lng: a.coords.longitude
                        };
                        (new google.maps.Geocoder).geocode({
                            location: r
                        }, function (a, t) {
                            if ("OK" === t)
                                if (a[1]) {
                                    console.log(a[1]);
                                    new google.maps.Marker({
                                        position: r,
                                        map: e
                                    })
                                } else
                                    window.alert("No results found");
                            else
                                window.alert("Geocoder failed due to: " + t)
                        });
                        var t = new google.maps.Circle({
                            radius: 2e3,
                            center: r,
                            map: e,
                            fillColor: houzez_primary_color,
                            fillOpacity: .1,
                            strokeColor: houzez_primary_color,
                            strokeOpacity: .3
                        });
                        e.fitBounds(t.getBounds())
                    }, function () {
                        handleLocationError(!0, e, e.getCenter())
                    }) : $.getJSON("http://ipinfo.io", function (a) {
                        var r = {
                            lat: 1 * (r = (r = a.loc).split(","))[0],
                            lng: 1 * r[1]
                        }
                            , t = new google.maps.Circle({
                                radius: 1e3,
                                center: r,
                                map: e,
                                icon: clusterIcon,
                                fillColor: houzez_primary_color,
                                fillOpacity: .2,
                                strokeColor: houzez_primary_color,
                                strokeOpacity: .6
                            });
                        e.fitBounds(t.getBounds());
                        new google.maps.Marker({
                            position: r,
                            animation: google.maps.Animation.DROP,
                            map: e
                        });
                        e.setCenter(r)
                    })
            }
            , houzezLatLng = function (e) {
                (new google.maps.Geocoder).geocode({
                    address: e
                }, function (e, a) {
                    if ("OK" == a)
                        return e[0].geometry.location
                })
            }
            , half_map_ajax_pagi = function () {
                return $(".half_map_ajax_pagi a").click(function (e) {
                    e.preventDefault();
                    var a = $(this).data("houzepagi")
                        , r = $(".advanced-search form")
                        , t = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(r, t, a)
                }),
                    !1
            }
            , houzez_header_listing_map = function (e, a, r, t, s, o, n, i, c, l, p, _, d, u, m, h, g, v, f, z, y, x) {
                var w = $("#securityHouzezHeaderMap").val()
                    , k = HOUZEZ_ajaxcalls_vars.header_map_selected_city;
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: ajaxurl,
                    data: {
                        action: "houzez_header_map_listings",
                        initial_city: k,
                        keyword: e,
                        country: a,
                        state: r,
                        location: t,
                        area: s,
                        status: o,
                        type: n,
                        label: i,
                        property_id: c,
                        bedrooms: l,
                        bathrooms: p,
                        min_price: _,
                        max_price: d,
                        min_area: u,
                        max_area: m,
                        features: h,
                        publish_date: g,
                        search_lat: v,
                        search_long: f,
                        use_radius: x,
                        search_location: y,
                        search_radius: z,
                        security: w
                    },
                    beforeSend: function () {
                        $("#houzez-map-loading").show()
                    },
                    success: function (e) {
                        if (houzezMap = new google.maps.Map(document.getElementById("houzez-listing-map"), houzezHeaderMapOptions),
                            google.maps.event.trigger(houzezMap, "resize"),
                            "" !== google_map_style) {
                            var a = JSON.parse(google_map_style);
                            houzezMap.setOptions({
                                styles: a
                            })
                        }
                        var r = new google.maps.LatLng("", "");
                        if (houzezMap.setCenter(r),
                            houzezMap.setZoom(parseInt(googlemap_default_zoom)),
                            document.getElementById("listing-mapzoomin") && houzez_map_zoomin(houzezMap),
                            document.getElementById("listing-mapzoomout") && houzez_map_zoomout(houzezMap),
                            document.getElementById("google-map-search")) {
                            var t = document.getElementById("google-map-search");
                            houzez_map_search_field(houzezMap, t)
                        }
                        $(".houzezMapType").click(function () {
                            var e = $(this).data("maptype");
                            houzez_change_map_type(houzezMap, e)
                        }),
                            $("#houzez-gmap-next").click(function () {
                                houzez_map_next(houzezMap)
                            }),
                            $("#houzez-gmap-prev").click(function () {
                                houzez_map_prev(houzezMap)
                            }),
                            document.getElementById("houzez-gmap-location") && google.maps.event.addDomListener(document.getElementById("houzez-gmap-location"), "click", function () {
                                houzezGeoLocation(houzezMap)
                            }),
                            remove_map_loader(houzezMap),
                            document.getElementById("houzez-gmap-full") && (houzez_is_mobile ? $("#houzez-gmap-full").toggle(function () {
                                google.maps.event.trigger(houzezMap, "resize"),
                                    houzezMap.setOptions({
                                        draggable: !0
                                    })
                            }, function () {
                                google.maps.event.trigger(houzezMap, "resize"),
                                    houzezMap.setOptions({
                                        draggable: !1
                                    })
                            }) : $("#houzez-gmap-full").toggle(function () {
                                google.maps.event.trigger(houzezMap, "resize"),
                                    houzezMap.setOptions({
                                        scrollwheel: !0
                                    })
                            }, function () {
                                google.maps.event.trigger(houzezMap, "resize"),
                                    houzezMap.setOptions({
                                        scrollwheel: !1
                                    })
                            })),
                            houzez_map_parallax(houzezMap),
                            !0 === e.getProperties ? (reloadMarkers(),
                                houzezAddMarkers(e.properties, houzezMap),
                                houzezMap.fitBounds(markers.reduce(function (e, a) {
                                    return e.extend(a.getPosition())
                                }, new google.maps.LatLngBounds)),
                                google.maps.event.trigger(houzezMap, "resize"),
                                markerCluster = new MarkerClusterer(houzezMap, markers, {
                                    maxZoom: 18,
                                    gridSize: 60,
                                    styles: [{
                                        url: clusterIcon,
                                        width: 48,
                                        height: 48,
                                        textColor: "#fff"
                                    }]
                                })) : $("#houzez-listing-map").empty().html('<div class="map-notfound">' + not_found + "</div>")
                    },
                    error: function (e, a, r) {
                        console.log(e.status),
                            console.log(e.responseText),
                            console.log(r)
                    }
                })
            }
            , houzez_half_map_listings = function (e, a, r, t, s, o, n, i, c, l, p, _, d, u, m, h, g, v, f, z, y, x, w, k) {
                var b = $("#securityHouzezHeaderMap").val()
                    , Z = $("#houzez_ajax_container");
                return void 0 != k && (paged = k),
                    $.ajax({
                        type: "POST",
                        dataType: "json",
                        url: ajaxurl,
                        data: {
                            action: "houzez_half_map_listings",
                            keyword: e,
                            location: t,
                            country: a,
                            state: r,
                            area: s,
                            status: o,
                            type: n,
                            label: i,
                            property_id: c,
                            bedrooms: l,
                            bathrooms: p,
                            min_price: _,
                            max_price: d,
                            min_area: u,
                            max_area: m,
                            features: h,
                            publish_date: g,
                            search_lat: f,
                            search_long: z,
                            use_radius: w,
                            search_location: x,
                            search_radius: y,
                            security: b,
                            paged: paged,
                            post_per_page: v
                        },
                        beforeSend: function () {
                            $("#houzez-map-loading").show(),
                                Z.empty().append('<div class="list-loading"><div class="list-loading-bar"></div><div class="list-loading-bar"></div><div class="list-loading-bar"></div><div class="list-loading-bar"></div></div>')
                        },
                        success: function (e) {
                            if ("" != e.query && $('input[name="search_args"]').val(e.query),
                                houzezMap = new google.maps.Map(document.getElementById("mapViewHalfListings"), houzezMapoptions),
                                "" !== google_map_style) {
                                var a = JSON.parse(google_map_style);
                                houzezMap.setOptions({
                                    styles: a
                                })
                            }
                            var r = new google.maps.LatLng("", "");
                            if (houzezMap.setCenter(r),
                                houzezMap.setZoom(parseInt(googlemap_default_zoom)),
                                document.getElementById("houzez-gmap-location") && google.maps.event.addDomListener(document.getElementById("houzez-gmap-location"), "click", function () {
                                    houzezGeoLocation(houzezMap)
                                }),
                                document.getElementById("houzez-gmap-full") && (houzez_is_mobile ? $("#houzez-gmap-full").toggle(function () {
                                    google.maps.event.trigger(houzezMap, "resize"),
                                        houzezMap.setOptions({
                                            draggable: !0
                                        })
                                }, function () {
                                    google.maps.event.trigger(houzezMap, "resize"),
                                        houzezMap.setOptions({
                                            draggable: !1
                                        })
                                }) : $("#houzez-gmap-full").toggle(function () {
                                    google.maps.event.trigger(houzezMap, "resize"),
                                        houzezMap.setOptions({
                                            scrollwheel: !0
                                        })
                                }, function () {
                                    google.maps.event.trigger(houzezMap, "resize"),
                                        houzezMap.setOptions({
                                            scrollwheel: !1
                                        })
                                })),
                                document.getElementById("listing-mapzoomin") && houzez_map_zoomin(houzezMap),
                                document.getElementById("listing-mapzoomout") && houzez_map_zoomout(houzezMap),
                                document.getElementById("google-map-search")) {
                                var t = document.getElementById("google-map-search");
                                houzez_map_search_field(houzezMap, t)
                            }
                            return $(".houzezMapType").click(function () {
                                var e = $(this).data("maptype");
                                houzez_change_map_type(houzezMap, e)
                            }),
                                $("#houzez-gmap-next").click(function () {
                                    houzez_map_next(houzezMap)
                                }),
                                $("#houzez-gmap-prev").click(function () {
                                    houzez_map_prev(houzezMap)
                                }),
                                remove_map_loader(houzezMap),
                                !0 === e.getProperties ? (reloadMarkers(),
                                    houzezAddMarkers(e.properties, houzezMap),
                                    Z.empty().html(e.propHtml),
                                    half_map_ajax_pagi(),
                                    houzez_infobox_trigger(),
                                    houzez_init_add_favorite(),
                                    houzez_init_remove_favorite(),
                                    $('[data-toggle="tooltip"]').tooltip(),
                                    1 == has_compare && houzez_compare_listing(),
                                    houzezMap.fitBounds(markers.reduce(function (e, a) {
                                        return e.extend(a.getPosition())
                                    }, new google.maps.LatLngBounds)),
                                    google.maps.event.trigger(houzezMap, "resize"),
                                    markerCluster = new MarkerClusterer(houzezMap, markers, {
                                        maxZoom: 12,
                                        gridSize: 60,
                                        styles: [{
                                            url: clusterIcon,
                                            width: 48,
                                            height: 48,
                                            textColor: "#fff"
                                        }]
                                    })) : ($("#mapViewHalfListings").empty().html('<div class="map-notfound">' + not_found + "</div>"),
                                        Z.empty().html('<div class="map-notfound">' + not_found + "</div>")),
                                !1
                        },
                        error: function (e, a, r) {
                            console.log(e.status),
                                console.log(e.responseText),
                                console.log(r)
                        }
                    }),
                    !1
            }
            , houzez_search_on_change = function (e, a, r, t, s, o, n, i) {
                var c, l, p, _, d, u, m, h, g, v, f, z, y, x, w, k, b, Z, j, O, C, M;
                return null != t && null != s ? (f = t,
                    z = s) : a.hasClass("widget") || 0 != advanced_search_price_slide ? (f = e.find('input[name="min-price"]').val(),
                        z = e.find('input[name="max-price"]').val()) : (f = e.find('select[name="min-price"]:not(:disabled)').val(),
                            z = e.find('select[name="max-price"]:not(:disabled)').val()),
                    l = e.find('select[name="state"]').val(),
                    "" != (p = e.find('select[name="location"]').val()) && null != p && void 0 !== p || (p = "all"),
                    "yes" != o && (_ = e.find('select[name="area"]').val()),
                    "yes" == n && (_ = "",
                        p = "all"),
                    "yes" == i && (l = "",
                        _ = "",
                        p = "all"),
                    c = e.find('select[name="country"]').val(),
                    d = e.find('select[name="status"]').val(),
                    u = e.find('select[name="type"]').val(),
                    g = e.find('select[name="bedrooms"]').val(),
                    v = e.find('select[name="bathrooms"]').val(),
                    m = e.find('select[name="label"]').val(),
                    h = e.find('input[name="property_id"]').val(),
                    y = e.find('input[name="min-area"]').val(),
                    x = e.find('input[name="max-area"]').val(),
                    w = e.find('input[name="keyword"]').val(),
                    k = e.find('input[name="publish_date"]').val(),
                    M = e.find(".features-list input[type=checkbox]:checked").map(function (e, a) {
                        return $(a).val()
                    }).toArray(),
                    b = e.find('input[name="lat"]').val(),
                    Z = e.find('input[name="lng"]').val(),
                    O = e.find('input[name="search_location"]').val(),
                    j = "template/property-listings-map.php" == current_tempalte ? e.find('input[name="search_radius"]').val() : e.find('select[name="radius"]').val(),
                    C = $(e.find('input[name="use_radius"]')).is(":checked") ? "on" : "off",
                    "template/property-listings-map.php" == current_tempalte ? houzez_half_map_listings(w, c, l, p, _, d, u, m, h, g, v, f, z, y, x, M, k, search_no_posts, b, Z, j, O, C, r) : houzez_header_listing_map(w, c, l, p, _, d, u, m, h, g, v, f, z, y, x, M, k, b, Z, j, O, C),
                    !1
            }
            , populate_area_dropdown = function (e) {
                var a;
                "" != (a = e.find('select[name="location"] option:selected').val()) ? (e.find('select[name="area"]').selectpicker("val", ""),
                    e.find('select[name="area"] option').each(function () {
                        var e = $(this).data("parentcity");
                        "" != $(this).val() && $(this).css("display", "none"),
                            e == a && $(this).css("display", "block")
                    })) : (e.find('select[name="area"]').selectpicker("val", ""),
                        e.find('select[name="area"] option').each(function () {
                            $(this).css("display", "block")
                        })),
                    e.find('select[name="area"]').selectpicker("refresh")
            }
            , populate_city_dropdown = function (e) {
                var a;
                "" != (a = e.find('select[name="state"] option:selected').val()) ? (e.find('select[name="location"], select[name="area"]').selectpicker("val", ""),
                    e.find('select[name="location"] option').each(function () {
                        var e = $(this).data("parentstate");
                        "" != $(this).val() && $(this).css("display", "none"),
                            e == a && $(this).css("display", "block")
                    })) : (e.find('select[name="location"], select[name="area"]').selectpicker("val", ""),
                        e.find('select[name="location"] option').each(function () {
                            $(this).css("display", "block")
                        }),
                        e.find('select[name="area"] option').each(function () {
                            $(this).css("display", "block")
                        })),
                    e.find('select[name="location"], select[name="area"]').selectpicker("refresh")
            }
            , populate_state_dropdown = function (e) {
                var a;
                "" != (a = e.find('select[name="country"] option:selected').val()) ? (e.find('select[name="location"], select[name="area"], select[name="state"]').selectpicker("val", ""),
                    e.find('select[name="state"] option').each(function () {
                        var e = $(this).data("parentcountry");
                        void 0 !== e && (e = e.toUpperCase()),
                            "" != $(this).val() && $(this).css("display", "none"),
                            e == a && $(this).css("display", "block")
                    })) : (e.find('select[name="location"], select[name="area"], select[name="state"]').selectpicker("val", ""),
                        e.find('select[name="state"] option').each(function () {
                            $(this).css("display", "block")
                        }),
                        e.find('select[name="area"] option').each(function () {
                            $(this).css("display", "block")
                        })),
                    e.find('select[name="location"], select[name="area"], select[name="state"]').selectpicker("refresh")
            };
        if ($("#houzez-listing-map").length > 0 || $("#mapViewHalfListings").length > 0) {
            var current_page = 0;
            if ($('select[name="area"], select[name="label"], select[name="bedrooms"], select[name="bathrooms"], select[name="min-price"], select[name="max-price"], input[name="min-price"], input[name="max-price"], input[name="min-area"], input[name="max-area"], select[name="type"], input[name="property_id"]').on("change", function () {
                var e = $(this).parents("form")
                    , a = $(this).parents(".widget_houzez_advanced_search");
                houzez_search_on_change(e, a, current_page)
            }),
                $('input[name="keyword"]').on("change", function () {
                    var e = $(this).parents("form")
                        , a = $(this).parents(".widget_houzez_advanced_search");
                    setTimeout(function () {
                        houzez_search_on_change(e, a, current_page)
                    }, 100)
                }),
                $("input.search_location").geocomplete({
                    details: "form",
                    country: houzez_geocomplete_country,
                    geocodeAfterResult: !0
                }).bind("geocode:result", function (e, a) {
                    var r = $(this).parents("form")
                        , t = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(r, t, current_page),
                        console.log(a)
                }),
                $("#half_map_update").on("click", function (e) {
                    e.preventDefault();
                    var a = $(this).parents("form")
                        , r = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(a, r, current_page)
                }),
                $('select[name="radius"]').on("change", function () {
                    var e = $(this).parents("form")
                        , a = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(e, a, current_page)
                }),
                $('select[name="country"]').on("change", function () {
                    var e = $(this).parents("form")
                        , a = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(e, a, current_page, "", "", "", "", "yes"),
                        populate_state_dropdown(e)
                }),
                $('select[name="state"]').on("change", function () {
                    var e = $(this).parents("form")
                        , a = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(e, a, current_page, "", "", "", "yes"),
                        populate_city_dropdown(e)
                }),
                $('select[name="location"]').on("change", function () {
                    var e = $(this).parents("form")
                        , a = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(e, a, current_page, "", "", "yes"),
                        populate_area_dropdown(e)
                }),
                $('input[name="feature[]"]').on("change", function () {
                    var e = $(this).parents("form")
                        , a = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(e, a, current_page)
                }),
                $(".search-date").on("change", function (e) {
                    var a = $(this).parents("form")
                        , r = $(this).parents(".widget_houzez_advanced_search");
                    houzez_search_on_change(a, r, current_page)
                }),
                $('select[name="status"]').on("change", function () {
                    var e = $(this).parents("form")
                        , a = $(this).parents(".widget_houzez_advanced_search");
                    $(this).val() == rent_status_for_price_range ? 0 != advanced_search_price_slide ? houzez_search_on_change(e, a, current_page, advanced_search_price_range_min_rent, advanced_search_price_range_max_rent) : houzez_search_on_change(e, a, current_page) : 0 != advanced_search_price_slide ? houzez_search_on_change(e, a, current_page, advanced_search_price_range_min, advanced_search_price_range_max) : houzez_search_on_change(e, a, current_page)
                }),
                "template/property-listings-map.php" == current_tempalte) {
                var state = HOUZEZ_ajaxcalls_vars.search_state
                    , country = HOUZEZ_ajaxcalls_vars.search_country
                    , keyword = HOUZEZ_ajaxcalls_vars.search_keyword
                    , location = HOUZEZ_ajaxcalls_vars.search_city
                    , features = HOUZEZ_ajaxcalls_vars.search_feature
                    , area = HOUZEZ_ajaxcalls_vars.search_area
                    , status = HOUZEZ_ajaxcalls_vars.search_status
                    , type = HOUZEZ_ajaxcalls_vars.search_type
                    , label = HOUZEZ_ajaxcalls_vars.search_label
                    , property_id = HOUZEZ_ajaxcalls_vars.property_id
                    , bedrooms = HOUZEZ_ajaxcalls_vars.search_bedrooms
                    , bathrooms = HOUZEZ_ajaxcalls_vars.search_bathrooms
                    , min_price = HOUZEZ_ajaxcalls_vars.search_min_price
                    , max_price = HOUZEZ_ajaxcalls_vars.search_max_price
                    , min_area = HOUZEZ_ajaxcalls_vars.search_min_area
                    , max_area = HOUZEZ_ajaxcalls_vars.search_max_area
                    , publish_date = HOUZEZ_ajaxcalls_vars.search_publish_date
                    , search_no_posts = HOUZEZ_ajaxcalls_vars.search_no_posts
                    , search_lat = HOUZEZ_ajaxcalls_vars.search_lat
                    , search_long = HOUZEZ_ajaxcalls_vars.search_long
                    , search_radius = HOUZEZ_ajaxcalls_vars.search_radius
                    , search_location = HOUZEZ_ajaxcalls_vars.search_location
                    , use_radius = HOUZEZ_ajaxcalls_vars.use_radius;
                houzez_half_map_listings(keyword, country, state, location, area, status, type, label, property_id, bedrooms, bathrooms, min_price, max_price, min_area, max_area, features, publish_date, search_no_posts, search_lat, search_long, search_radius, search_location, use_radius)
            } else
                houzez_header_listing_map()
        } else
            $('select[name="country"]').on("change", function () {
                var e = $(this).parents("form");
                populate_state_dropdown(e)
            }),
                $('select[name="location"]').on("change", function () {
                    var e = $(this).parents("form");
                    populate_area_dropdown(e)
                }),
                $('select[name="state"]').on("change", function () {
                    var e = $(this).parents("form");
                    populate_city_dropdown(e)
                }),
                $("input.search_location").length > 0 && $("input.search_location").geocomplete({
                    details: "form",
                    country: houzez_geocomplete_country,
                    geocodeAfterResult: !0
                });
        var remove_map_loader = function (e) {
            google.maps.event.addListener(e, "tilesloaded", function () {
                jQuery("#houzez-map-loading").hide()
            })
        }
            , price_range_main_search = function (e, a) {
                if ($(".price-range-advanced").slider({
                    range: !0,
                    min: e,
                    max: a,
                    values: [e, a],
                    slide: function (e, a) {
                        if ("after" == currency_position)
                            var r = addCommas(a.values[0]) + currency_symb
                                , t = addCommas(a.values[1]) + currency_symb;
                        else
                            var r = currency_symb + addCommas(a.values[0])
                                , t = currency_symb + addCommas(a.values[1]);
                        $(".min-price-range-hidden").val(r),
                            $(".max-price-range-hidden").val(t),
                            $(".min-price-range").text(r),
                            $(".max-price-range").text(t)
                    },
                    stop: function (e, a) {
                        if ($("#houzez-listing-map").length > 0 || $("#mapViewHalfListings").length > 0) {
                            var r = $(this).parents("form")
                                , t = $(this).parents("form");
                            houzez_search_on_change(r, t, 0)
                        }
                    }
                }),
                    "after" == currency_position)
                    var r = addCommas($(".price-range-advanced").slider("values", 0)) + currency_symb
                        , t = addCommas($(".price-range-advanced").slider("values", 1)) + currency_symb;
                else
                    var r = currency_symb + addCommas($(".price-range-advanced").slider("values", 0))
                        , t = currency_symb + addCommas($(".price-range-advanced").slider("values", 1));
                $(".min-price-range-hidden").val(r),
                    $(".max-price-range-hidden").val(t),
                    $(".min-price-range").text(r),
                    $(".max-price-range").text(t)
            };
        $(".price-range-advanced").length > 0 && price_range_main_search(advanced_search_price_range_min, advanced_search_price_range_max),
            $('.houzez-adv-price-range select[name="status"]').on("change", function () {
                $(this).val() == rent_status_for_price_range ? price_range_main_search(advanced_search_price_range_min_rent, advanced_search_price_range_max_rent) : price_range_main_search(advanced_search_price_range_min, advanced_search_price_range_max)
            });
        var selected_status_adv_search = $('.houzez-adv-price-range select[name="status"]').val();
        selected_status_adv_search == rent_status_for_price_range && price_range_main_search(advanced_search_price_range_min_rent, advanced_search_price_range_max_rent);
        var price_range_widget = function (e, a) {
            $("#slider-price").slider({
                range: !0,
                min: e,
                max: a,
                values: [e, a],
                slide: function (e, a) {
                    "after" == currency_position ? ($("#min-price").val(addCommas(a.values[0]) + currency_symb),
                        $("#max-price").val(addCommas(a.values[1]) + currency_symb)) : ($("#min-price").val(currency_symb + addCommas(a.values[0])),
                            $("#max-price").val(currency_symb + addCommas(a.values[1])))
                },
                stop: function (e, a) {
                    if ($("#houzez-listing-map").length > 0) {
                        var r = $(this).parents("form")
                            , t = $(this).parents(".widget_houzez_advanced_search");
                        houzez_search_on_change(r, t)
                    }
                }
            }),
                "after" == currency_position ? ($("#min-price").val(addCommas($("#slider-price").slider("values", 0)) + currency_symb),
                    $("#max-price").val(currency_symb + addCommas($("#slider-price").slider("values", 1)) + currency_symb)) : ($("#min-price").val(currency_symb + addCommas($("#slider-price").slider("values", 0))),
                        $("#max-price").val(currency_symb + addCommas($("#slider-price").slider("values", 1))))
        };
        $("#slider-price").length > 0 && price_range_widget(advanced_search_price_range_min, advanced_search_price_range_max),
            $("#widget_status").on("change", function () {
                $(this).val() == rent_status_for_price_range ? price_range_widget(advanced_search_price_range_min_rent, advanced_search_price_range_max_rent) : price_range_widget(advanced_search_price_range_min, advanced_search_price_range_max)
            });
        var selected_status_widget_search = $("#widget_status").val();
        selected_status_widget_search == rent_status_for_price_range && price_range_widget(advanced_search_price_range_min_rent, advanced_search_price_range_max_rent),
            $("#slider-size").length > 0 && ($("#slider-size").slider({
                range: !0,
                min: advanced_search_widget_min_area,
                max: advanced_search_widget_max_area,
                values: [advanced_search_widget_min_area, advanced_search_widget_max_area],
                slide: function (e, a) {
                    $("#min-size").val(a.values[0] + " " + measurement_unit),
                        $("#max-size").val(a.values[1] + " " + measurement_unit)
                },
                stop: function (e, a) {
                    if ($("#houzez-listing-map").length > 0) {
                        var r = $(this).parents("form")
                            , t = $(this).parents(".widget_houzez_advanced_search");
                        houzez_search_on_change(r, t, 0)
                    }
                }
            }),
                $("#min-size").val($("#slider-size").slider("values", 0) + " " + measurement_unit),
                $("#max-size").val($("#slider-size").slider("values", 1) + " " + measurement_unit));
        var radius_search_slider = function (e) {
            $("#radius-range-slider").slider({
                value: e,
                min: 0,
                max: 100,
                step: 1,
                slide: function (e, a) {
                    $("#radius-range-text").html(a.value),
                        $("#radius-range-value").val(a.value)
                },
                stop: function (e, a) {
                    if ($("#houzez-listing-map").length > 0 || $("#mapViewHalfListings").length > 0) {
                        var r = $(this).parents("form")
                            , t = $(this).parents("form");
                        houzez_search_on_change(r, t, 0)
                    }
                }
            }),
                $("#radius-range-text").html($("#radius-range-slider").slider("value")),
                $("#radius-range-value").val($("#radius-range-slider").slider("value"))
        };
        $("#radius-range-slider").length > 0 && radius_search_slider(houzez_default_radius);
        var houzez_infobox_trigger = function () {
            return $(".infobox_trigger").each(function (e) {
                $(this).on("mouseenter", function () {
                    houzezMap && google.maps.event.trigger(markers[e], "click")
                }),
                    $(this).on("mouseleave", function () {
                        infobox.open(null, null)
                    })
            }),
                !1
        }
            , currencySwitcherList = $("#houzez-currency-switcher-list");
        currencySwitcherList.length > 0 && ($("#houzez-currency-switcher-list > li").click(function (e) {
            e.stopPropagation(),
                currencySwitcherList.slideUp(200);
            var selectedCurrencyCode = $(this).data("currency-code");
            if (selectedCurrencyCode) {
                $("#houzez-selected-currency span").html(selectedCurrencyCode),
                    $("#houzez-switch-to-currency").val(selectedCurrencyCode);
                var security = $("#currency_switch_security").val()
                    , houzez_switch_to_currency = $("#houzez-switch-to-currency").val();
                fave_processing_modal('<i class="' + process_loader_spinner + '"></i> ' + currency_updating_msg),
                    $.ajax({
                        url: ajaxurl,
                        dataType: "JSON",
                        method: "POST",
                        data: {
                            action: "houzez_currency_converter",
                            currency_converter: houzez_switch_to_currency,
                            security: security
                        },
                        success: function (e) {
                            e.success ? window.location.reload() : console.log(e)
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            console.log(err.Message)
                        }
                    })
            }
        }),
            $("#houzez-selected-currency").click(function (e) {
                currencySwitcherList.slideToggle(200),
                    e.stopPropagation()
            }),
            $("html").click(function () {
                currencySwitcherList.slideUp(100)
            }));
        var areaSwitcherList = $("#houzez-area-switcher-list");
        if (areaSwitcherList.length > 0 && ($("#houzez-area-switcher-list > li").click(function (e) {
            e.stopPropagation(),
                areaSwitcherList.slideUp(200);
            var selectedAreaCode = $(this).data("area-code")
                , houzez_switch_area_text = $("#houzez_switch_area_text").val();
            if (selectedAreaCode) {
                $("#houzez-selected-area span").html(houzez_switch_area_text),
                    $("#houzez-switch-to-area").val(selectedAreaCode);
                var security = $("#area_switch_security").val()
                    , houzez_switch_to_area = $("#houzez-switch-to-area").val();
                fave_processing_modal('<i class="' + process_loader_spinner + '"></i> ' + measurement_updating_msg),
                    $.ajax({
                        url: ajaxurl,
                        dataType: "JSON",
                        method: "POST",
                        data: {
                            action: "houzez_switch_area",
                            switch_to_area: houzez_switch_to_area,
                            security: security
                        },
                        success: function (e) {
                            e.success ? window.location.reload() : console.log(e)
                        },
                        error: function (xhr, status, error) {
                            var err = eval("(" + xhr.responseText + ")");
                            console.log(err.Message)
                        }
                    })
            }
        }),
            $("#houzez-selected-area").click(function (e) {
                areaSwitcherList.slideToggle(200),
                    e.stopPropagation()
            }),
            $("html").click(function () {
                areaSwitcherList.slideUp(100)
            })),
            0 != keyword_autocomplete) {
            var houzezAutoComplete = function () {
                var e = 0
                    , a = $(".auto-complete")
                    , r = 0;
                $('input[name="keyword"]').keyup(function () {
                    var a = $(this).parents("form").find(".auto-complete")
                        , t = $(this).val()
                        , s = (t = $.trim(t)).length;
                    s >= 2 && s != r ? (r = s,
                        a.fadeIn(),
                        $.ajax({
                            type: "POST",
                            url: ajaxurl,
                            data: {
                                action: "houzez_get_auto_complete_search",
                                key: t
                            },
                            beforeSend: function () {
                                1 == ++e && a.html('<div class="result"><p><i class="fa fa-spinner fa-spin fa-fw"></i> ' + autosearch_text + "</p></div>")
                            },
                            success: function (r) {
                                0 == --e && (a.show(),
                                    "" != r && a.empty().html(r).bind())
                            },
                            error: function (r) {
                                0 == --e && a.html('<div class="result"><p><i class="fa fa-spinner fa-spin fa-fw"></i> ' + autosearch_text + " </p></div>")
                            }
                        })) : s != r && a.fadeOut()
                }),
                    a.on("click", "li", function () {
                        $('input[name="keyword"]').val($(this).data("text")),
                            a.fadeOut()
                    }).bind()
            };
            houzezAutoComplete()
        }
        $(".start_thread_form").click(function (e) {
            e.preventDefault();
            var $this = $(this)
                , $form = $this.parents("form")
                , $result = $form.find(".form_messages");
            $.ajax({
                url: ajaxurl,
                data: $form.serialize(),
                method: $form.attr("method"),
                dataType: "JSON",
                beforeSend: function () {
                    $this.children("i").remove(),
                        $this.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>')
                },
                success: function (e) {
                    e.success ? ($result.empty().append(e.msg),
                        $form.find("input").val(""),
                        $form.find("textarea").val("")) : $result.empty().append(e.msg)
                },
                error: function (xhr, status, error) {
                    var err = eval("(" + xhr.responseText + ")");
                    console.log(err.Message)
                },
                complete: function () {
                    $this.children("i").removeClass(process_loader_spinner),
                        $this.children("i").addClass(success_icon)
                }
            })
        });
        var houzez_message_notifications = function () {
            $.ajax({
                url: ajaxurl,
                data: {
                    action: "houzez_chcek_messages_notifications"
                },
                method: "POST",
                dataType: "JSON",
                beforeSend: function () { },
                success: function (e) {
                    e.success && (e.notification ? ($(".user-alert").show(),
                        $(".msg-alert").show()) : ($(".user-alert").hide(),
                            $(".msg-alert").hide()))
                }
            })
        };
        $(document).ready(function () {
            houzez_message_notifications(),
                setInterval(function () {
                    houzez_message_notifications()
                }, 18e4)
        }),
            $(".start_thread_message_form").click(function (e) {
                e.preventDefault();
                var a = $(this)
                    , r = a.parents("form");
                r.find(".form_messages");
                $.ajax({
                    url: ajaxurl,
                    data: r.serialize(),
                    method: r.attr("method"),
                    dataType: "JSON",
                    beforeSend: function () {
                        a.children("i").remove(),
                            a.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>')
                    },
                    success: function (e) {
                        window.location.replace(e.url)
                    },
                    complete: function () {
                        a.children("i").removeClass(process_loader_spinner),
                            a.children("i").addClass(success_icon)
                    }
                })
            });
        var agency_listings_ajax_pagi = function () {
            return $("body.single-houzez_agency ul.pagination li a").click(function (e) {
                e.preventDefault();
                var current_page = $(this).data("houzepagi")
                    , agency_id_pagi = $("#agency_id_pagi").val()
                    , ajax_container = $("#houzez_ajax_container");
                $.ajax({
                    url: ajaxurl,
                    method: "POST",
                    data: {
                        action: "houzez_ajax_agency_filter",
                        paged: current_page,
                        agency_id: agency_id_pagi
                    },
                    beforeSend: function () {
                        ajax_container.empty().append('<div class="list-loading"><div class="list-loading-bar"></div><div class="list-loading-bar"></div><div class="list-loading-bar"></div><div class="list-loading-bar"></div></div>')
                    },
                    success: function (e) {
                        ajax_container.empty().html(e),
                            agency_listings_ajax_pagi()
                    },
                    complete: function () { },
                    error: function (xhr, status, error) {
                        var err = eval("(" + xhr.responseText + ")");
                        console.log(err.Message)
                    }
                })
            }),
                !1
        };
        if ($("body.single-houzez_agency").length > 0 && agency_listings_ajax_pagi(),
            $("a.delete-property").on("click", function () {
                if (1 == confirm(delete_property_confirmation)) {
                    var e = $(this)
                        , a = e.data("id")
                        , r = e.data("nonce");
                    fave_processing_modal(delete_property_loading),
                        $.ajax({
                            type: "POST",
                            dataType: "json",
                            url: ajaxurl,
                            data: {
                                action: "houzez_delete_property",
                                prop_id: a,
                                security: r
                            },
                            success: function (e) {
                                1 == e.success ? window.location.reload() : (jQuery("#fave_modal").modal("hide"),
                                    alert(e.reason))
                            },
                            error: function (e) { }
                        })
                }
            }),
            "yes" == is_singular_property) {
            var houzezSlidesToShow = 0;
            houzezSlidesToShow = "v3" == property_detail_top ? "8" : "11";
            var gallery_autoplay = HOUZEZ_ajaxcalls_vars.gallery_autoplay;
            gallery_autoplay = "1" === gallery_autoplay;
            var detail_slider = $(".detail-slider")
                , detail_slider_nav = $(".detail-slider-nav")
                , slidesPerPage = 4
                , syncedSecondary = !0
                , slider_speed = 1200
                , houzez_detail_slider_main_settings = function () {
                    return {
                        stopOnHover: !0,
                        items: 1,
                        rtl: houzez_rtl,
                        margin: 0,
                        nav: !0,
                        dots: !1,
                        loop: !1,
                        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
                        autoplay: gallery_autoplay,
                        smartSpeed: slider_speed,
                        autoplaySpeed: slider_speed,
                        responsiveRefreshRate: 200
                    }
                }
                , houzez_detail_slider_nav_settings = function () {
                    return {
                        margin: 1,
                        center: !1,
                        nav: !1,
                        rtl: houzez_rtl,
                        dots: !1,
                        loop: !1,
                        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
                        autoplay: !1,
                        smartSpeed: 800,
                        autoplaySpeed: 800,
                        responsiveRefreshRate: 10,
                        responsive: {
                            0: {
                                items: 5
                            },
                            767: {
                                items: 7
                            },
                            992: {
                                items: 9
                            },
                            1199: {
                                items: houzezSlidesToShow
                            }
                        }
                    }
                }
                , property_detail_slideshow = function () {
                    detail_slider.owlCarousel(houzez_detail_slider_main_settings()).on("changed.owl.carousel", function (e) {
                        var a = e.item.index;
                        detail_slider_nav.find(".owl-item").removeClass("current").eq(a).addClass("current");
                        var r = detail_slider_nav.find(".owl-item.active").length - 1
                            , t = detail_slider_nav.find(".owl-item.active").first().index();
                        a > detail_slider_nav.find(".owl-item.active").last().index() && detail_slider_nav.data("owl.carousel").to(a, 100, !0),
                            a < t && detail_slider_nav.data("owl.carousel").to(a - r, 100, !0)
                    }),
                        detail_slider_nav.on("initialized.owl.carousel", function () {
                            detail_slider_nav.find(".owl-item").eq(0).addClass("current")
                        }).owlCarousel(houzez_detail_slider_nav_settings()),
                        detail_slider_nav.on("click", ".owl-item", function (e) {
                            e.preventDefault();
                            var a = $(this).index();
                            detail_slider.data("owl.carousel").to(a, slider_speed, !0)
                        })
                };
            property_detail_slideshow()
        }
        if ("yes" == is_singular_property) {
            $("#property-rating").rating({
                step: .5,
                showClear: !1
            }),
                $(".rating-display-only").rating({
                    disabled: !0,
                    showClear: !1
                }),
                $(".property_rating").click(function (e) {
                    e.preventDefault();
                    var a = $(this)
                        , r = a.parents("form");
                    r.find(".form_messages");
                    $.ajax({
                        url: ajaxurl,
                        data: r.serialize(),
                        method: r.attr("method"),
                        dataType: "JSON",
                        beforeSend: function () {
                            a.children("i").remove(),
                                a.prepend('<i class="fa-left ' + process_loader_spinner + '"></i>')
                        },
                        success: function (e) {
                            window.location.reload()
                        },
                        complete: function () {
                            a.children("i").removeClass(process_loader_spinner),
                                a.children("i").addClass(success_icon)
                        }
                    })
                });
            var tabsHeight = function () {
                var e = $(".detail-media #gallery")
                    , a = $(".detail-media .tab-content")
                    , r = $("#singlePropertyMap,#street-map")
                    , t = r.outerHeight()
                    , s = e.outerHeight();
                a.outerHeight();
                e.is(":visible") ? r.css("min-height", s) : r.css("min-height", t)
            };
            if ($(window).on("load", function () {
                tabsHeight()
            }),
                $(window).on("resize", function () {
                    tabsHeight()
                }),
                0 != property_map) {
                var map = null
                    , panorama = null
                    , fenway = new google.maps.LatLng(prop_lat, prop_lng)
                    , mapOptions = {
                        center: fenway,
                        zoom: 15,
                        scrollwheel: !1
                    }
                    , panoramaOptions = {
                        position: fenway,
                        pov: {
                            heading: 34,
                            pitch: 10
                        }
                    }
                    , initialize = function () {
                        map = new google.maps.Map(document.getElementById("singlePropertyMap"), mapOptions),
                            $("#street-map").length > 0 && (panorama = new google.maps.StreetViewPanorama(document.getElementById("street-map"), panoramaOptions));
                        var e = $("#securityHouzezMap").val();
                        $.ajax({
                            type: "POST",
                            dataType: "json",
                            url: ajaxurl,
                            data: {
                                action: "houzez_get_single_property",
                                prop_id: $("#prop_id").val(),
                                security: e
                            },
                            success: function (e) {
                                if ("" !== google_map_style) {
                                    var a = JSON.parse(google_map_style);
                                    map.setOptions({
                                        styles: a
                                    })
                                }
                                !0 === e.getprops && (houzezAddMarkers(e.props, map),
                                    houzezSetPOIControls(map, map.getCenter()))
                            },
                            error: function (e) { }
                        })
                    };
                $('a[href="#gallery"]').on("shown.bs.tab", function () {
                    setTimeout(tabsHeight, 500)
                }),
                    $('a[href="#singlePropertyMap"]').on("shown.bs.tab", function () {
                        google.maps.event.trigger(map, "resize"),
                            map.setCenter(fenway)
                    }),
                    $('a[href="#street-map"]').on("shown.bs.tab", function () {
                        fenway = panorama.getPosition(),
                            panoramaOptions.position = fenway,
                            panorama = new google.maps.StreetViewPanorama(document.getElementById("street-map"), panoramaOptions)
                    }),
                    google.maps.event.addDomListener(window, "load", initialize)
            }
            $(".houzez-gallery-prop-v2:first a[rel^='prettyPhoto']").prettyPhoto({
                animation_speed: "normal",
                slideshow: 5e3,
                autoplay_slideshow: !1,
                allow_resize: !0,
                keyboard_shortcuts: !0,
                theme: "pp_default"
            })
        }
    }
});
