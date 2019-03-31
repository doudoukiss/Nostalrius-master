function onStepIn(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{x = 32022, y = 32635, z = 7})
    Game.sendMagicEffect({x = 32022, y = 32635, z = 7}, 13)
end

function onAddItem(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{x = 32022, y = 32635, z = 7})
    Game.sendMagicEffect({x = 32022, y = 32635, z = 7}, 13)
end




