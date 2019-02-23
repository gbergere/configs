-----------------------------------------------
-- Window Management Module
-----------------------------------------------

local module = {}

-----------------------------------------------
-- Window Movement Component
-----------------------------------------------

module.move = {
  up    = {  0,-.1,  0,  0},
  down  = {  0, .1,  0,  0},
  left  = {-.1,  0,  0,  0},
  right = { .1,  0,  0,  0}
}

module.resize = {
  shorter = {  0,  0,  0,-.1},
  taller  = {  0,  0,  0, .1},
  thiner  = {  0,  0,-.1,  0},
  bigger  = {  0,  0, .1,  0}
}

module.moveAndResize = function(win, action)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x + max.w * action[1]
  f.y = f.y + max.h * action[2]
  f.w = f.w + max.w * action[3]
  f.h = f.h + max.h * action[4]

  win:setFrame(f)
end

-----------------------------------------------
-- Window Layouts Component
-----------------------------------------------

module.layout = {
  maximized   = hs.layout.maximized,
  left50      = hs.layout.left50,
  right50     = hs.layout.right50,
  left75      = {  0,  0,.75,  1},
  right25     = {.75,  0,.25,  1},
  topLeft     = {  0,  0, .5, .5},
  topRight    = { .5,  0, .5, .5},
  bottomLeft  = {  0, .5, .5, .5},
  bottomRight = { .5, .5, .5, .5}
}

module.applyLayout = function(win, layout)
  hs.layout.apply({
    {nil, win, win:screen(), layout, nil, nil}
  })
end

-- Return functions
return module