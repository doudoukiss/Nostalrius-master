function onStepIn(creature, item, position, fromPosition)
	doRelocate(item:getPosition(),{x = 32526, y = 32156, z = 12})
end

function onAddItem(item, tileitem, position)
	doRelocate(item:getPosition(),{x = 32526, y = 32156, z = 12})
end
