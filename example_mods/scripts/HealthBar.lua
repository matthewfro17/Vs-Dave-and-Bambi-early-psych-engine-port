-- Script by AquaStrikr (https://twitter.com/AquaStrikr_)
function onCreatePost()
	makeLuaSprite('Health', 'healthBar2')
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	setProperty('healthBarBG.visible', false)
end

function onUpdatePost(elapsed)
	setProperty('Health.x', getProperty('healthBar.x') - 5)
	setProperty('Health.y', getProperty('healthBar.y') - 4)
end