function onCreate()

    local diff = getProperty('storyDifficultyText')

    makeLuaText('songText', songName.. '', 0,3,678);
    addLuaText('songText',true);
	setTextSize('songText',14)
    setTextBorder("songText", 1, '000000')

    makeLuaText('message','Song by Cuzsie! (THIS SONG IS NOT CANON)', 0,3,695);
    addLuaText('message',true);
	setTextSize('message',14)
    setTextBorder("message", 1, '000000')

end