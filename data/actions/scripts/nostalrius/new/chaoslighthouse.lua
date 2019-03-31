function onUse(player, item, fromPosition, target, toPosition)
	if item:getId() == 2772 then 
		item:transform(2773, 1)
		item:decay()
		doRelocate({x = 31897, y = 32688, z = 8},{x = 31897, y = 32688, z = 9})
		Game.transformItemOnMap({x = 31897, y = 32688, z = 8}, 351, 369)
	elseif item:getId() == 2773 then 
		item:transform(2772, 1)
		item:decay()
		Game.transformItemOnMap({x = 31897, y = 32688, z = 8}, 369, 351)   
	end
	return true
end



