local text
local x, y
local dx, dy

function _init()
    text = "hello, world"
    x, y = 0, 0
    dx, dy = 1, 1
end

function _update60()
    x = x + dx
    y = y + dy

    if x < 0 or x + #text * FONT_WIDTH > SCREEN_SIZE then dx = -dx end
    if y < 0 or y + FONT_HEIGHT > SCREEN_SIZE then dy = -dy end
end

function _draw()
    cls(WHITE)
    print(text, x, y, BLACK)
end
