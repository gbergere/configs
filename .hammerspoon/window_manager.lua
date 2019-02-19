----------------------------------------------
-- Set up
-----------------------------------------------

local hyper = {"alt", "cmd"}
local margin = 20

-----------------------------------------------
-- hyper b to center window
-----------------------------------------------

local center = function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.w = 1400
    f.h = max.h * (max.h > 1200 and 0.7 or 0.9)
    win:setFrame(f)
    win:centerOnScreen(screen)
end
hs.hotkey.bind(hyper, "b", center)
hs.hotkey.bind(hyper, "up", center)

-----------------------------------------------
-- hyper d for left one half window
-----------------------------------------------

local left50 = function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    local width = max.h > 1600 and 0.5 or 0.65
    f.x = max.x + margin
    f.y = max.y + margin
    f.w = max.w * width - margin * 1.5
    f.h = max.h - margin * 2
    win:setFrame(f)
end
hs.hotkey.bind(hyper, "d", left50)
hs.hotkey.bind(hyper, "left", left50)

-----------------------------------------------
-- hyper g for right one half window
-----------------------------------------------

local right50 = function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    local width = max.h > 1600 and 0.5 or 0.35
    f.x = max.x + (max.w + margin) * (1 - width)
    f.y = max.y + margin
    f.w = max.w * width - margin * 1.5
    f.h = max.h - margin * 2
    win:setFrame(f)
end
hs.hotkey.bind(hyper, "g", right50)
hs.hotkey.bind(hyper, "right", right50)

-----------------------------------------------
-- hyper space to maximize the window
-----------------------------------------------

hs.hotkey.bind(hyper, "space", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + margin
    f.y = max.y + margin
    f.w = max.w - margin * 2
    f.h = max.h - margin * 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper f to toggle fullscreen
-----------------------------------------------

hs.hotkey.bind(hyper, "f", function()
    hs.window.focusedWindow():toggleFullScreen()
end)

-----------------------------------------------
-- hyper r for top left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "r", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + margin
    f.y = max.y + margin
    f.w = max.w / 2 - margin * 1.5
    f.h = max.h / 2 - margin * 1.5
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper t for top right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "t", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w + margin) / 2
    f.y = max.y + margin
    f.w = max.w / 2 - margin * 1.5
    f.h = max.h / 2 - margin * 1.5
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper v for bottom right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "v", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w + margin) / 2
    f.y = max.y + (max.h + margin) / 2
    f.w = max.w / 2 - margin * 1.5
    f.h = max.h / 2 - margin * 1.5
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper c for bottom left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "c", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + margin
    f.y = max.y + (max.h + margin) / 2
    f.w = max.w / 2 - margin * 1.5
    f.h = max.h / 2 - margin * 1.5
    win:setFrame(f)
end)

-----------------------------------------------
--- hyper 4 for top right left-half quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "4", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w + margin) / 2
    f.y = max.y + margin
    f.w = max.w / 4 - margin
    f.h = max.h / 2 - margin * 1.5
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper 5 for top right right-half quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "5", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 4 * 3) + margin / 2
    f.y = max.y + margin
    f.w = max.w / 4 - margin * 1.5
    f.h = max.h / 2 - margin * 1.5
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper = to resize horizontally window +10%
-----------------------------------------------

hs.hotkey.bind(hyper, "=", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.w = f.w + max.w * 0.1
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper - to resize horizontally window -10%
-----------------------------------------------

hs.hotkey.bind(hyper, "-", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.w = f.w - max.w * 0.1
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper shift = to resize vertically window +10%
-----------------------------------------------

hs.hotkey.bind(table.concat(hyper, "shift"), "=", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.h = f.h + max.h * 0.1
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper shift - to resize vertically window -10%
-----------------------------------------------

hs.hotkey.bind(table.concat(hyper, "shift"), "-", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.h = f.h - max.h * 0.1
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper ] to move horizontally window +10%
-----------------------------------------------

hs.hotkey.bind(hyper, "]", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = f.x + max.w * 0.1
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper [ to move horizontally window -10%
-----------------------------------------------

hs.hotkey.bind(hyper, "[", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = f.x - max.w * 0.1
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper shift ] to move vertically window +10%
-----------------------------------------------

hs.hotkey.bind(table.concat(hyper, "shift"), "]", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.y = f.y + max.h * 0.1
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper shift [ to move vertically window -10%
-----------------------------------------------

hs.hotkey.bind(table.concat(hyper, "shift"), "[", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.y = f.y - max.h * 0.1
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper . to move on next screen
-----------------------------------------------

hs.hotkey.bind(hyper, ".", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    win:moveToScreen(screen:next())
end)

-----------------------------------------------
-- hyper , to move on next screen
-----------------------------------------------

hs.hotkey.bind(hyper, ",", function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    win:moveToScreen(screen:previous())
end)

-----------------------------------------------
-- Hyper hjkl to switch window focus
-----------------------------------------------

hs.hotkey.bind(hyper, 'k', function()
    hs.window.focusedWindow():focusWindowNorth()
end)

hs.hotkey.bind(hyper, 'j', function()
    hs.window.focusedWindow():focusWindowSouth()
end)

hs.hotkey.bind(hyper, 'l', function()
    hs.window.focusedWindow():focusWindowEast()
end)

hs.hotkey.bind(hyper, 'h', function()
    hs.window.focusedWindow():focusWindowWest()
end)
