function onCreate()
	-- background shit
	makeLuaSprite('bonk', 'bonk', -500, -300);
	setLuaSpriteScrollFactor('bonk', 0.9, 0.9);

	addLuaSprite('bonk', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end