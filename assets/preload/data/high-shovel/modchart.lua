function onCreate()
	if not lowQuality then
		makeAnimatedLuaSprite('smoke', 'smoke', -100, 540);
		addAnimationByPrefix('smoke', 'smoke', 'Symbol 7', 24, true)
		setObjectCamera('smoke', 'other');
		addLuaSprite('smoke', false);
	end
	setProperty('skipCountdown', true)
	
end
function onStartCountdown()
doTweenColor('dadTween', 'dad', '000000', 0.001, 'linear')
doTweenColor('bfTween', 'boyfriend', '000000', 0.001, 'linear')
doTweenColor('dadiconTween', 'iconP1', '000000', 0.001, 'linear')
doTweenColor('bficonTween', 'iconP2', '000000', 0.001, 'linear')
end
function onStepHit()
	if curStep == 67 then
		doTweenColor('dadTween', 'dad', 'FFFFFF', 1, 'linear')
		doTweenColor('dadiconTween', 'iconP2', 'FFFFFF', 1, 'linear')
	end
	if curStep == 98 then
		doTweenColor('bfTween', 'boyfriend', 'FFFFFF', 1, 'linear')
		doTweenColor('bficonTween', 'iconP1', 'FFFFFF', 1, 'linear')
	end
end