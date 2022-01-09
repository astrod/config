-- f13
hs.hotkey.bind({}, 'f13', function()
    hs.application.launchOrFocus('IntelliJ IDEA')
end)

-- f14
hs.hotkey.bind({}, 'f14', function()
    hs.application.launchOrFocus('iTerm')
end)

-- f15
hs.hotkey.bind({}, 'f15', function()
    hs.application.launchOrFocus('Logseq')
end)

-- f16
hs.hotkey.bind({}, 'f16', function()
    hs.application.launchOrFocus('Google Chrome')
end)

-- f17
hs.hotkey.bind({}, 'f17', function()
    hs.application.launchOrFocus('Papago')
end)

-- change to English when entering esc
local inputEnglish = "com.apple.keylayout.ABC"
local esc_bind

function back_to_eng()
	local inputSource = hs.keycodes.currentSourceID()
	if not (inputSource == inputEnglish) then
		hs.keycodes.currentSourceID(inputEnglish)
	end

    esc_bind:disable()
	hs.eventtap.keyStroke({}, 'escape')
    esc_bind:enable()
	
end 

esc_bind = hs.hotkey.new({}, 'escape', back_to_eng):enable()
