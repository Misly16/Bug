function love.update(dt)
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    if love.keyboard.isDown('right') or love.keyboard.isDown('d') then
        print(map_horizontal)
        direction = 'right'
        map_horizontal = map_horizontal - 100 * dt
    elseif love.keyboard.isDown('left') or love.keyboard.isDown('a') then
        direction = 'left'
        map_horizontal = map_horizontal + 100 * dt
    elseif love.keyboard.isDown('down') or love.keyboard.isDown('s') then
        direction = 'down'
        map_vertical = map_vertical - 100 * dt
    elseif love.keyboard.isDown('up') or love.keyboard.isDown('w') then
        direction = 'up'
        map_vertical = map_vertical + 100 * dt
    end
end