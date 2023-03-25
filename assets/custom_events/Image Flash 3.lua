function onEvent(name, value1, value2)
	if name == "Image Flash 3" then
		makeLuaSprite('image', value1, -49, 0);
        scaleObject('image', 0.7, 0.7)
		addLuaSprite('image', true);
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.0, 'quartIn');
		setObjectCamera('image', 'hud');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		doTweenAlpha('byebye', 'image', 0, 1.0, 'linear');
	end
end

function onTweenCompleted(tag)
	if tag == 'byebye' then
		removeLuaSprite('image', true);
	end
end