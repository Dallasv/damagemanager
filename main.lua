local utf8 = require("utf8")

-- This function is called exactly once at the beginning of the game.
function love.load()
	cmd = ""
end

-- Callback function used to draw on the screen every frame.
function love.draw()
	love.graphics.clear(0, 0, 255)
	love.graphics.print("Press space to calc damage!", 64, 64)
	love.graphics.printf(cmd, 64, 8, love.graphics.getWidth())
end

function love.textinput(t)
	cmd = cmd .. t
end

-- Callback function triggered when a key is pressed.
function love.keypressed(key, scancode, isrepeat)
	if key == 'backspace' then
		local byteoffset = utf8.offset(cmd, -1)
		if byteoffset then
			cmd = string.sub(cmd, 1, byteoffset - 1)
		end
	end
	if key == 'escape' then
		love.event.quit()
	end
	if key == 'return' then
		doCommand()
	end
	if key == 'space' then
		calcDamage()
	end
end

function doCommand()
	print(string.format("doCommand: %s", cmd))
end

function calcDamage()
	print("calcDamage function called")
end
