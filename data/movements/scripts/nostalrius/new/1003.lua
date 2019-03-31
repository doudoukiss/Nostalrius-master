function onStepIn(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{ x = 32001, y = 32625, z = 7 })
     Game.sendMagicEffect({ x = 32001, y = 32625, z = 7 }, 13)
end

function onAddItem(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{ x = 31995, y = 32626, z = 7})
    Game.sendMagicEffect({ x = 31995, y = 32626, z = 7}, 13)
end




