direction = 'up'
function love.draw()
    -- Theres probably a better way to do this, but it doesn't seem to affect performance/memory usage
    if direction == 'up' then
        love.graphics.draw(bug_up, x, y, rotation, 0.2, 0.2)
    elseif direction == 'down' then
        love.graphics.draw(bug_down, x, y, rotation, 0.2, 0.2)
    elseif direction == 'left' then
        love.graphics.draw(bug_left, x, y, rotation, 0.2, 0.2)
    elseif direction == 'right' then
        love.graphics.draw(bug_right, x, y, rotation, 0.2, 0.2)
    end
end