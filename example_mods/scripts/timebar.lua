-- Script by YKG (https://www.youtube.com/channel/UCzKQumkquC48QjP5DfTZqNg)
function onCreatePost()
	makeLuaSprite('gray', 'gray')
	setObjectCamera('gray', 'hud')
	addLuaSprite('gray', true)
        scaleObject('gray', 1.775, .035)
	setObjectOrder('gray', getObjectOrder('timeBar'))
	makeLuaSprite('color', 'green')
	setObjectCamera('color', 'hud')
	addLuaSprite('color', true)
        scaleObject('color', 1.775, .035)
	setObjectOrder('color', getObjectOrder('timeBar'))
	makeLuaSprite('Time', 'timerBar2')
	setObjectCamera('Time', 'hud')
	addLuaSprite('Time', true)
	setObjectOrder('Time', getObjectOrder('timeBar') + 1)
	setProperty('timeBarBG.visible', false)
	setProperty('timeBar.visible', false)
end

function onUpdate()
    scaleObject('color', 1.775 * getProperty("songPercent"), .035)
end

function onUpdatePost(elapsed)
	setProperty('color.x', getProperty('Time.x') + 4)
	setProperty('color.y', getProperty('Time.y') + 3.5)
	setProperty('gray.x', getProperty('color.x'))
	setProperty('gray.y', getProperty('color.y'))
	setProperty('Time.x', getProperty('timeBarBG.x') - 100)
	setProperty('Time.y', getProperty('timeBarBG.y'))
end