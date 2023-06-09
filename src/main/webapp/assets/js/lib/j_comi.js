/*! https://github.com/tamble/jquery-ui-daterangepicker
 * Copyright (c) 2017 Tamble, Inc. Licensed MIT
 */

(function(d, F, z) {
    function L(l, a, b) {
        function f(b) {
            h.button("option", "label", b)
        }
        var h, c;
        c = "drp_autogen" + M++;
        d('label[for="' + l.attr("id") + '"]').attr("for", c);
        h = d('<button type="button"></button>').addClass(a + "-triggerbutton").attr({
            title: l.attr("title"),
            tabindex: l.attr("tabindex"),
            id: c
        }).button({
            icons: {
                secondary: b.icon
            },
            icon: b.icon,
            iconPosition: "end",
            label: b.initialText
        });
        return {
            getElement: function() {
                return h
            },
            getLabel: function() {
                return h.button("option", "label")
            },
            setLabel: f,
            reset: function() {
                l.val("").change();
                f(b.initialText)
            },
            enforceOptions: function() {
                h.button("option", {
                    icons: {
                        secondary: b.icon
                    },
                    icon: b.icon,
                    iconPosition: "end",
                    label: b.initialText
                })
            }
        }
    }
    function G(l, a, b) {
        var f, h, c, g;
        (function() {
            c = d("<div></div>").addClass(l + "-presets");
            g = d("<ul></ul>");
            d.ui.menu.prototype.options.items === z ? (f = '<li><a href="#">',
            h = "</a></li>") : (f = "<li><div>",
            h = "</div></li>");
            d.each(a.presetRanges, function() {
                d(f + this.text + h).data("dateStart", this.dateStart).data("dateEnd", this.dateEnd).click(b).appendTo(g)
            });
            c.append(g);
            g.menu().data("ui-menu").delay = 0
        }
        )();
        return {
            getElement: function() {
                return c
            }
        }
    }
    function N(l, a) {
        function b(b, f) {
            var c = d.datepicker.parseDate(a.datepickerOptions.dateFormat || d.datepicker._defaults.dateFormat, b);
            !k.start || k.end ? (k.start = c,
            k.end = null) : c < k.start ? (k.end = k.start,
            k.start = c) : k.end = c;
            if (a.datepickerOptions.hasOwnProperty("onSelect"))
                a.datepickerOptions.onSelect(b, f)
        }
        function f(b) {
            var d = [!0, k.start && (+b === +k.start || k.end && k.start <= b && b <= k.end) ? "ui-state-highlight" : ""]
              , c = [!0, "", ""];
            a.datepickerOptions.hasOwnProperty("beforeShowDay") && (c = a.datepickerOptions.beforeShowDay(b));
            return [d[0] && c[0], d[1] + " " + c[1], c[2]]
        }
        function h() {
            setTimeout(function() {
                c();
                h()
            }, moment().endOf("day") - moment())
        }
        function c() {
            g.datepicker("refresh");
            g.datepicker("setDate", null)
        }
        var g, k = {
            start: null,
            end: null
        };
        g = d("<div></div>", {
            "class": l + "-calendar ui-widget-content"
        });
        g.datepicker(d.extend({}, a.datepickerOptions, {
            beforeShowDay: f,
            onSelect: b
        }));
        h();
        return {
            getElement: function() {
                return g
            },
            scrollToRangeStart: function() {
                k.start && g.datepicker("setDate", k.start)
            },
            getRange: function() {
                return k
            },
            setRange: function(b) {
                k = b;
                c()
            },
            refresh: c,
            reset: function() {
                k = {
                    start: null,
                    end: null
                };
                c()
            },
            enforceOptions: function() {
                g.datepicker("option", d.extend({}, a.datepickerOptions, {
                    beforeShowDay: f,
                    onSelect: b
                }))
            }
        }
    }
    function O(l, a, b) {
        var f, h, c, g;
        f = d("<div></div>").addClass(l + "-buttonpanel");
        a.applyButtonText && (h = d('<button type="button" class="ui-priority-primary"></button>').text(a.applyButtonText).button(),
        f.append(h));
        a.clearButtonText && (c = d('<button type="button" class="ui-priority-secondary"></button>').text(a.clearButtonText).button(),
        f.append(c));
        a.cancelButtonText && (g = d('<button type="button" class="ui-priority-secondary"></button>').text(a.cancelButtonText).button(),
        f.append(g));
        b && (h && h.click(b.onApply),
        c && c.click(b.onClear),
        g && g.click(b.onCancel));
        return {
            getElement: function() {
                return f
            },
            enforceOptions: function() {
                h && h.button("option", "label", a.applyButtonText);
                c && c.button("option", "label", a.clearButtonText);
                g && g.button("option", "label", a.cancelButtonText)
            }
        }
    }
    function P(l, a, b) {
        function f() {
            if (b.autoFitCalendars) {
                var e = d(F).width()
                  , c = n.outerWidth(!0)
                  , a = p.getElement()
                  , g = a.datepicker("option", "numberOfMonths")
                  , h = g;
                if (c > e) {
                    for (; 1 < g && n.outerWidth(!0) > e; )
                        a.datepicker("option", "numberOfMonths", --g);
                    g !== h && (f.monthWidth = (c - n.outerWidth(!0)) / (h - g))
                } else
                    for (; g < f.numberOfMonths && e - n.outerWidth(!0) >= f.monthWidth; )
                        a.datepicker("option", "numberOfMonths", ++g);
                H();
                C = !1
            }
        }
        function h() {
            m.getElement().click(I);
            m.getElement().keydown(z);
            x.click(function(e) {
                q(e);
                r()
            });
            d(F).resize(function() {
                t ? f() : C = !0
            })
        }
        function c(e) {
            var a = b.dateFormat;
            return d.datepicker.formatDate(a, e.start) + (+e.end !== +e.start ? b.rangeSplitter + d.datepicker.formatDate(a, e.end) : "")
        }
        function g(e) {
            var a = b.altFormat
              , c = {};
            c.start = d.datepicker.formatDate(a, e.start);
            c.end = d.datepicker.formatDate(a, e.end);
            return JSON.stringify(c)
        }
        function k(e) {
            var a = b.altFormat
              , c = null;
            if (e)
                try {
                    c = JSON.parse(e, function(e, b) {
                        return e ? d.datepicker.parseDate(a, b) : b
                    })
                } catch (g) {}
            return c
        }
        function r() {
            var e = B();
            e ? (m.setLabel(c(e)),
            p.setRange(e)) : p.reset()
        }
        function A(e, d) {
            var f = e || p.getRange();
            if (f.start) {
                f.end || (f.end = f.start);
                e && p.setRange(f);
                m.setLabel(c(f));
                l.val(g(f)).change();
                if (b.onChange)
                    b.onChange();
                a._trigger("change", d, {
                    instance: a
                })
            }
        }
        function B() {
            return k(l.val())
        }
        function J(e) {
            m.reset();
            p.reset();
            if (b.onClear)
                b.onClear();
            a._trigger("clear", e, {
                instance: a
            })
        }
        function K(e) {
            var a = d(this)
              , c = a.data("dateStart")().startOf("day").toDate()
              , a = a.data("dateEnd")().startOf("day").toDate();
            p.setRange({
                start: c,
                end: a
            });
            b.applyOnMenuSelect && (q(e),
            A(null, e));
            return !1
        }
        function H() {
            n.position({
                my: "left top",
                at: "left bottom" + (0 > b.verticalOffset ? b.verticalOffset : "+" + b.verticalOffset),
                of: m.getElement(),
                collision: "flipfit flipfit",
                using: function(e, a) {
                    var c = u, d, f = a.element.top + a.element.height / 2, g = a.target.top + a.target.height / 2, h = v;
                    u = a.element.left + a.element.width / 2 > a.target.left + a.target.width / 2 ? 1 : 0;
                    u !== c && (b.mirrorOnCollision && (d = 0 === u ? w : p,
                    n.children().first().append(d.getElement())),
                    n.removeClass("comiseo-daterangepicker-" + y[c]),
                    n.addClass("comiseo-daterangepicker-" + y[u]));
                    n.css({
                        left: e.left,
                        top: e.top
                    });
                    v = f > g ? 3 : 2;
                    v !== h && (null !== h && m.getElement().removeClass("comiseo-daterangepicker-" + y[h]),
                    m.getElement().addClass("comiseo-daterangepicker-" + y[v]));
                    c = 3 === v && a.element.top - a.target.top !== a.target.height + b.verticalOffset || 2 === v && a.target.top - a.element.top !== a.element.height + b.verticalOffset;
                    m.getElement().toggleClass("comiseo-daterangepicker-vfit", c)
                }
            })
        }
        function z(a) {
            switch (a.which) {
            case d.ui.keyCode.UP:
            case d.ui.keyCode.DOWN:
                a.preventDefault();
                a.stopPropagation();
                D(a);
                break;
            case d.ui.keyCode.ESCAPE:
                a.preventDefault();
                a.stopPropagation();
                q(a);
                r();
                break;
            case d.ui.keyCode.TAB:
                q(a)
            }
        }
        function D(e) {
            t || (m.getElement().addClass("comiseo-daterangepicker-active"),
            x.show(),
            t = !0,
            C && f(),
            p.scrollToRangeStart(),
            n.show(),
            H());
            if (b.onOpen)
                b.onOpen();
            a._trigger("open", e, {
                instance: a
            })
        }
        function q(e) {
            t && (n.hide(),
            x.hide(),
            m.getElement().removeClass("comiseo-daterangepicker-active"),
            t = !1);
            if (b.onClose)
                b.onClose();
            a._trigger("close", e, {
                instance: a
            })
        }
        function I(a) {
            t ? (q(a),
            r()) : D(a)
        }
        var n, x, m, w, p, E, t = !1, C = !1, y = ["left", "right", "top", "bottom"], u = 1, v = null;
        (function() {
            m = L(l, "comiseo-daterangepicker", b);
            w = G("comiseo-daterangepicker", b, K);
            p = N("comiseo-daterangepicker", b);
            f.numberOfMonths = b.datepickerOptions.numberOfMonths;
            f.numberOfMonths instanceof Array && (b.autoFitCalendars = !1);
            E = O("comiseo-daterangepicker", b, {
                onApply: function(a) {
                    q(a);
                    A(null, a)
                },
                onClear: function(a) {
                    q(a);
                    J(a)
                },
                onCancel: function(b) {
                    a._trigger("cancel", b, {
                        instance: a
                    });
                    q(b);
                    r()
                }
            });
            n = d("<div></div>", {
                "class": "comiseo-daterangepicker comiseo-daterangepicker-" + y[u] + " ui-widget ui-widget-content ui-corner-all ui-front"
            }).append(d("<div></div>", {
                "class": "comiseo-daterangepicker-main ui-widget-content"
            }).append(w.getElement()).append(p.getElement())).append(d('<div class="ui-helper-clearfix"></div>').append(E.getElement())).hide();
            l.hide().after(m.getElement());
            x = d("<div></div>", {
                "class": "ui-front comiseo-daterangepicker-mask"
            }).hide();
            d("body").append(x).append(n);
            f();
            r();
            h()
        }
        )();
        return {
            toggle: I,
            destroy: function() {
                n.remove();
                m.getElement().remove();
                l.show()
            },
            open: D,
            close: q,
            setRange: A,
            getRange: B,
            clearRange: J,
            reset: r,
            enforceOptions: function() {
                var a = w;
                w = G("comiseo-daterangepicker", b, K);
                a.getElement().replaceWith(w.getElement());
                p.enforceOptions();
                E.enforceOptions();
                m.enforceOptions();
                (a = B()) && m.setLabel(c(a))
            },
            getContainer: function() {
                return n
            }
        }
    }
    var M = 0;
    d.widget("comiseo.daterangepicker", {
        version: "0.6.0-beta.1",
        options: {
            presetRanges: [{
                text: "Today",
                dateStart: function() {
                    return moment()
                },
                dateEnd: function() {
                    return moment()
                }
            }, {
                text: "Yesterday",
                dateStart: function() {
                    return moment().subtract("days", 1)
                },
                dateEnd: function() {
                    return moment().subtract("days", 1)
                }
            }, {
                text: "Last 7 Days",
                dateStart: function() {
                    return moment().subtract("days", 6)
                },
                dateEnd: function() {
                    return moment()
                }
            }, {
                text: "Last Week (Mo-Su)",
                dateStart: function() {
                    return moment().subtract("days", 7).isoWeekday(1)
                },
                dateEnd: function() {
                    return moment().subtract("days", 7).isoWeekday(7)
                }
            }, {
                text: "Month to Date",
                dateStart: function() {
                    return moment().startOf("month")
                },
                dateEnd: function() {
                    return moment()
                }
            }, {
                text: "Previous Month",
                dateStart: function() {
                    return moment().subtract("month", 1).startOf("month")
                },
                dateEnd: function() {
                    return moment().subtract("month", 1).endOf("month")
                }
            }, {
                text: "Year to Date",
                dateStart: function() {
                    return moment().startOf("year")
                },
                dateEnd: function() {
                    return moment()
                }
            }],
            initialText: "Select date range...",
            icon: "ui-icon-triangle-1-s",
            applyButtonText: "Apply",
            clearButtonText: "Clear",
            cancelButtonText: "Cancel",
            rangeSplitter: " - ",
            dateFormat: "M d, yy",
            altFormat: "yy-mm-dd",
            verticalOffset: 0,
            mirrorOnCollision: !0,
            autoFitCalendars: !0,
            applyOnMenuSelect: !0,
            open: null,
            close: null,
            change: null,
            clear: null,
            cancel: null,
            onOpen: null,
            onClose: null,
            onChange: null,
            onClear: null,
            datepickerOptions: {
                numberOfMonths: 3,
                maxDate: 0
            }
        },
        _create: function() {
            this._dateRangePicker = P(this.element, this, this.options)
        },
        _destroy: function() {
            this._dateRangePicker.destroy()
        },
        _setOptions: function(d) {
            this._super(d);
            this._dateRangePicker.enforceOptions()
        },
        open: function() {
            this._dateRangePicker.open()
        },
        close: function() {
            this._dateRangePicker.close()
        },
        setRange: function(d) {
            this._dateRangePicker.setRange(d)
        },
        getRange: function() {
            return this._dateRangePicker.getRange()
        },
        clearRange: function() {
            this._dateRangePicker.clearRange()
        },
        widget: function() {
            return this._dateRangePicker.getContainer()
        }
    })
}
)(jQuery, window);
