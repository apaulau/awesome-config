--[[

     Multicolor Awesome WM theme 2.0
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local rrect = function(radius)
		return 	function(cr, width, height)
			  gears.shape.rounded_rect(cr, width, height, radius)
		end
end

local theme                                     = {}
theme.confdir                                   = os.getenv("HOME") .. "/.config/awesome"
theme.wallpaper                                 = theme.confdir .. "/wall.jpg"
theme.font                                      = "Iosevka 10"

theme.bg_normal                                 = "#000000aa"
theme.bg_focus                                  = "#000000aa"
theme.bg_urgent                                 = "#000000aa"
theme.fg_normal                                 = "#aaaaaa"
theme.fg_focus                                  = "#ffffff"
theme.fg_urgent                                 = "#ff00ac"
theme.fg_minimize                               = "#656565"

theme.border_width                              = dpi(0)
theme.border_normal                             = "#1c2022"
theme.border_focus                              = "#00b4ff"
theme.border_marked                             = "#006dff"

theme.menu_border_width                         = 0
theme.menu_width                                = dpi(130)
theme.menu_submenu_icon                         = theme.confdir .. "/icons/submenu.png"
theme.menu_fg_normal                            = "#ffffff"
theme.menu_fg_focus                             = "#00b4ff"
theme.menu_bg_normal                            = "#050505dd"
theme.menu_bg_focus                             = "#050505dd"

theme.systray_icon_spacing = dpi(2)

theme.tasklist_bg_normal                        = "#FFFFFF00"
theme.tasklist_bg_focus                         = "#00000080"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true

theme.hotkeys_font                              = "Iosevka 10"
theme.hotkeys_description_font                  = "Iosevka 8"
theme.hotkeys_bg                                = "#000000CC"

theme.notification_font		                      = "Iosevka 10"
theme.notification_shape                      	= rrect(8)
theme.notification_bg				                    = "#00000090"
theme.notification_fg				                    = "#ffffff"
theme.notification_margin			                  = 50
theme.notification_icon_size			              = 64

theme.widget_temp                               = theme.confdir .. "/icons/temp.png"
theme.widget_uptime                             = theme.confdir .. "/icons/ac.png"
theme.widget_cpu                                = theme.confdir .. "/icons/cpu.png"
theme.widget_weather                            = theme.confdir .. "/icons/dish.png"
theme.widget_fs                                 = theme.confdir .. "/icons/fs.png"
theme.widget_mem                                = theme.confdir .. "/icons/mem.png"
theme.widget_note                               = theme.confdir .. "/icons/note.png"
theme.widget_note_on                            = theme.confdir .. "/icons/note_on.png"
theme.widget_netdown                            = theme.confdir .. "/icons/net_down.png"
theme.widget_netup                              = theme.confdir .. "/icons/net_up.png"
theme.widget_mail                               = theme.confdir .. "/icons/mail.png"
theme.widget_batt                               = theme.confdir .. "/icons/bat.png"
theme.widget_clock                              = theme.confdir .. "/icons/clock.png"
theme.widget_vol                                = theme.confdir .. "/icons/spkr.png"
theme.taglist_squares_sel                       = theme.confdir .. "/icons/square_a.png"
theme.taglist_squares_unsel                     = theme.confdir .. "/icons/square_b.png"
theme.useless_gap                               = 2
theme.layout_tile                               = theme.confdir .. "/icons/tile.png"
theme.layout_tilegaps                           = theme.confdir .. "/icons/tilegaps.png"
theme.layout_tileleft                           = theme.confdir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.confdir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.confdir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.confdir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.confdir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.confdir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.confdir .. "/icons/dwindle.png"
theme.layout_max                                = theme.confdir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.confdir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.confdir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.confdir .. "/icons/floating.png"
theme.titlebar_close_button_normal              = theme.confdir .. "/icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.confdir .. "/icons/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = theme.confdir .. "/icons/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.confdir .. "/icons/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = theme.confdir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.confdir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.confdir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.confdir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = theme.confdir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.confdir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.confdir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.confdir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = theme.confdir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.confdir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.confdir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.confdir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.confdir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.confdir .. "/icons/titlebar/maximized_focus_active.png"

local markup = lain.util.markup

-- Textclock
os.setlocale(os.getenv("LANG")) -- to localize the clock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local mytextclock = wibox.widget.textclock(markup("#ffffff", "%A %d %B ") .. markup("#ab7367", "|") .. markup("#ffffff", " %H:%M "))
local tztextclock = wibox.widget.textclock(markup("#ab7367", "|") .. markup("#ffffff", " %H:%M CDT "), 60, "America/Chicago")
mytextclock.font = theme.font
tztextclock.font = theme.font

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { mytextclock },
    notification_preset = {
        font = "Iosevka 16",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})

-- Weather
local weather_widget = require("awesome-wm-widgets.weather-widget.weather")

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_batt)
local bat = lain.widget.bat({
    settings = function()
        local perc = bat_now.perc ~= "N/A" and bat_now.perc .. "%" or bat_now.perc

        if bat_now.ac_status == 1 then
            perc = perc .. " plug"
        end

        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, perc .. " "))
    end
})

-- ALSA volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volume_now.level = volume_now.level .. "M"
        end

        widget:set_markup(markup.fontfg(theme.font, "#7493d2", volume_now.level .. "% "))
    end
})

-- Net
local netdownicon = wibox.widget.imagebox(theme.widget_netdown)
local netdowninfo = wibox.widget.textbox()
local netupicon = wibox.widget.imagebox(theme.widget_netup)
local netupinfo = lain.widget.net({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e54c62", net_now.sent .. " "))
        netdowninfo:set_markup(markup.fontfg(theme.font, "#87af5f", net_now.received .. " "))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local memory = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e0da37", mem_now.used .. "M "))
    end
})

-- MPD
-- local mpdicon = wibox.widget.imagebox()
-- theme.mpd = lain.widget.mpd({
--     settings = function()
--         mpd_notification_preset = {
--             text = string.format("%s [%s] - %s\n%s", mpd_now.artist,
--                    mpd_now.album, mpd_now.date, mpd_now.title)
--         }
--
--         if mpd_now.state == "play" then
--             artist = mpd_now.artist .. " > "
--             title  = mpd_now.title .. " "
--             mpdicon:set_image(theme.widget_note_on)
--         elseif mpd_now.state == "pause" then
--             artist = "mpd "
--             title  = "paused "
--         else
--             artist = ""
--             title  = ""
--             --mpdicon:set_image() -- not working in 4.0
--             mpdicon._private.image = nil
--             mpdicon:emit_signal("widget::redraw_needed")
--             mpdicon:emit_signal("widget::layout_changed")
--         end
--         widget:set_markup(markup.fontfg(theme.font, "#e54c62", artist) .. markup.fontfg(theme.font, "#b2b2b2", title))
--     end
-- })

local cpu_widget = require("awesome-wm-widgets.cpu-widget.cpu-widget")
local todo_widget = require("awesome-wm-widgets.todo-widget.todo")
local micwidget_builder = require("awmic")
micobj = micwidget_builder({font="Iosevka" .. " " .. 20})

function theme.at_screen_connect(s)
    -- Quake application
    -- s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    -- s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(19), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
            -- s.mypromptbox,
            --mpdicon,
            --theme.mpd.widget,
        },
        s.mytasklist, -- Middle widget
        --nil,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            netdownicon,
            netdowninfo,
            netupicon,
            netupinfo.widget,
            micobj,
            volicon,
            theme.volume.widget,
            memicon,
            memory.widget,
            cpuicon,
            cpu_widget {
              width = 70,
              step_width = 2,
              step_spacing = 0,
              color = '#d42f69',
              enable_kill_button = true
            },
            baticon,
            bat.widget,
            --weathericon,
            weather_widget({
              api_key='21d619893ab3cefe614502874e68e227',
              coordinates = {53.893009, 27.567444},
              time_format_12h = true,
              units = 'metric',
              both_units_widget = false,
              font_name = 'Iosevka',
              icons = 'weather-underground-icons',
              icons_extension = '.png',
              show_hourly_forecast = true,
              show_daily_forecast = true,
            }),
            clockicon,
            mytextclock,
            tztextclock,
            todo_widget(),
            s.mylayoutbox,
        },
    }

    -- Create the bottom wibox
--    s.mybottomwibox = awful.wibar({ position = "bottom", screen = s, border_width = 0, height = 20, bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the bottom wibox
--    s.mybottomwibox:setup {
--        layout = wibox.layout.align.horizontal,
--        { -- Left widgets
--            layout = wibox.layout.fixed.horizontal,
--        },
--        s.mytasklist, -- Middle widget
--        { -- Right widgets
--            layout = wibox.layout.fixed.horizontal,
--            s.mylayoutbox,
--        },
--    }
end

return theme
