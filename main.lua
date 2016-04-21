function love.load()
end

function love.draw()
	love.graphics.clear(0, 0, 255)
	love.graphics.print("Press space to calc damage!", 64, 64)
end

function love.keypressed(key, scancode, isrepeat)
	if key == 'escape' then
		love.event.quit()
	end
	if key == 'space' then
		doit()
	end
end

function doit()
	print("doit")
end
