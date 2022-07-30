function onCreate()
	-- background shit
	makeLuaSprite('sky', 'ehz/sky', -600, -600);
	setScrollFactor('sky', 0.6, 0.6);
	addLuaSprite('sky', false);
	
	makeAnimatedLuaSprite('fire', 'ehz/fire', -600, -200)
    luaSpriteAddAnimationByPrefix('fire', 'fire', 'fire', 24, true);
	objectPlayAnimation('fire','move',false)
	setScrollFactor('fire', 0.85, 0.85);
	removeLuaSprite('fire', false);
	
	makeLuaSprite('hills', 'ehz/hills', -525, -50);
	setScrollFactor('hills', 0.8, 0.8);
	addLuaSprite('hills', false);
	
	makeAnimatedLuaSprite('water', 'ehz/water', -600, 475)
    luaSpriteAddAnimationByPrefix('water', 'water', 'water', 24, true);
	objectPlayAnimation('water','move',false)
	setScrollFactor('water', 0.9, 0.9);
	addLuaSprite('water', false);

	
	makeLuaSprite('ground', 'ehz/ground', -275, 650);
	addLuaSprite('ground', false);

	makeLuaSprite('tree', 'ehz/tree', 800, -50);
	addLuaSprite('tree', true);
	
	function onBeatHit()
		if curBeat == 102 then
		addLuaSprite('fire', false);
		end

		if curBeat == 102 then
		removeLuaSprite('hills', false);
		end
		
		if curBeat == 102 then
		removeLuaSprite('water', false);
		end
		
		if curBeat == 102 then
		removeLuaSprite('ground', false);
		end
		
		if curBeat == 102 then
		addLuaSprite('water', false);
		end
		
		if curBeat == 102 then
		addLuaSprite('ground', false);
		end
		
		if curBeat == 102 then
		addLuaSprite('tree', false);
		end
end
	
end