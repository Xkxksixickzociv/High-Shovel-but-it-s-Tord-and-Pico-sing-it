function onStartCountdown()
modchart = true
	return Function_Continue;
end

function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -1790, -800);
	setScrollFactor('sky', 0.1, 0.5);
	scaleObject('sky', 0.7, 0.7);
	
	makeLuaSprite('house', 'house', -2790, -1000);
	setScrollFactor('house', 1, 1);
	
	if not lowQuality then
		makeLuaSprite('city', 'SecondParalax', -1290, -500);
		setScrollFactor('city', 0.65, 0.65);
		scaleObject('city', 0.8, 0.8);
	end

	addLuaSprite('sky', false); --bg
	addLuaSprite('city', false);
	addLuaSprite('house', false);
end

function onCreatePost()
setProperty('gf.visible', false)
end

function onUpdate(elapsed)
	if modchart == true then
		setPropertyFromGroup('strumLineNotes', 0, 'x', 730)
		setPropertyFromGroup('strumLineNotes', 1, 'x', 845)
		setPropertyFromGroup('strumLineNotes', 2, 'x', 955)
		setPropertyFromGroup('strumLineNotes', 3, 'x', 1065)
		setPropertyFromGroup('strumLineNotes', 4, 'x', 90)
		setPropertyFromGroup('strumLineNotes', 5, 'x', 205)
		setPropertyFromGroup('strumLineNotes', 6, 'x', 315)
		setPropertyFromGroup('strumLineNotes', 7, 'x', 425)
    end
end

function onGameOver()
	modchart = false
	return Function_Continue;
end