function love.update(dt)
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    if love.keyboard.isDown('right') or love.keyboard.isDown('d') then
        if map_horizontal <= -1500 then
            map_horizontal = map_horizontal
        else
            direction = 'right'
            map_horizontal = map_horizontal - 100 * dt
        end
    elseif love.keyboard.isDown('left') or love.keyboard.isDown('a') then
        if map_horizontal >= 1500 then
            map_horizontal = map_horizontal
        else
            direction = 'left'
            map_horizontal = map_horizontal + 100 * dt
        end
    elseif love.keyboard.isDown('down') or love.keyboard.isDown('s') then
        if map_vertical <= -1500 then
            map_vertical = map_vertical
        else
            direction = 'down'
            map_vertical = map_vertical - 100 * dt
        end
    elseif love.keyboard.isDown('up') or love.keyboard.isDown('w') then
        if map_vertical >= 1500 then
            map_vertical = map_vertical
        else
            direction = 'up'
            map_vertical = map_vertical + 100 * dt
        end
    end
end