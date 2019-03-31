function onStepIn(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{x = 32350, y = 32223, z = 7})
     Game.sendMagicEffect({x = 32350, y = 32223, z = 7}, 13)
end

function onAddItem(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{x = 32350, y = 32223, z = 7})
    Game.sendMagicEffect({x = 32350, y = 32223, z = 7}, 13)
end




