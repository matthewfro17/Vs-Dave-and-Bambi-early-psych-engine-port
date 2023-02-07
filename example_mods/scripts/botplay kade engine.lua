function onUpdatePost(elapsed)
	setProperty('botplayTxt.y', 525)

    if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
        setProperty('botplayTxt.y', 900)
    end
end