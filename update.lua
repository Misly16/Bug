function love.update(dt)
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    if love.keyboard.isDown("right") then
        direction = 'right'
        print(x)
        if x >= width - 60 then
            x = x
        else
            x = x + 100 * dt
        end
    elseif love.keyboard.isDown("left") then
        direction = 'left'
        if x <= 0 then
            x = x
        else
            x = x - 100 * dt
        end
    elseif love.keyboard.isDown("down") then
        direction = 'down'
        if y >= height - 60 then
            y = y
        else
            y = y + 100 * dt
        end
    elseif love.keyboard.isDown("up") then
        direction = 'up'
        print(y)
        if y <= 0 then
            y = y
        else
            y = y - 100 * dt
        end
    end
end