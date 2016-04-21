-- This function is called exactly once at the beginning of the game.
function love.load()
end

-- Callback function used to draw on the screen every frame.
function love.draw()
	love.graphics.clear(0, 0, 255)
	love.graphics.print("Press space to calc damage!", 64, 64)
end

-- Callback function triggered when a key is pressed.
function love.keypressed(key, scancode, isrepeat)
	if key == 'escape' then
		love.event.quit()
	end
	if key == 'space' then
		doit()
	end
end

-- This gets called when we press the space bar key.
function doit()
	print("doit")
end
