direction = 'up'
map_horizontal = 0
map_vertical = 0
function love.draw()
    for i = 0, love.graphics.getWidth() / background:getWidth() do
        for j = 0, love.graphics.getHeight() / background:getHeight() do
            love.graphics.draw(background, i * background:getWidth() + map_horizontal, j * background:getHeight() + map_vertical)
        end
    end
    -- Theres probably a better way to do this, but it doesn't seem to affect performance/memory usage
    if direction == 'up' then
        love.graphics.draw(bug_up, love.graphics.getWidth()/2, love.graphics.getHeight()/2, rotation, 0.2, 0.2, bug_up:getWidth()/2, bug_up:getHeight()/2)
    elseif direction == 'down' then
        love.graphics.draw(bug_down, love.graphics.getWidth()/2, love.graphics.getHeight()/2, rotation, 0.2, 0.2, bug_down:getWidth()/2, bug_down:getHeight()/2)
    elseif direction == 'left' then
        love.graphics.draw(bug_left, love.graphics.getWidth()/2, love.graphics.getHeight()/2, rotation, 0.2, 0.2, bug_left:getWidth()/2, bug_left:getHeight()/2)
    elseif direction == 'right' then
        love.graphics.draw(bug_right, love.graphics.getWidth()/2, love.graphics.getHeight()/2, rotation, 0.2, 0.2, bug_right:getWidth()/2, bug_right:getHeight()/2)
    end
end