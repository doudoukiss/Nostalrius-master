function onStepIn(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{x = 32010, y = 32630, z = 7})
    Game.sendMagicEffect({x = 32010, y = 32630, z = 7}, 13)
end

function onAddItem(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{x = 32010, y = 32630, z = 7})
    Game.sendMagicEffect({x = 32010, y = 32630, z = 7}, 13)
end




