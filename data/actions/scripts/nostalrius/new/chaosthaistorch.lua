function onUse(player, item, fromPosition, target, toPosition)
	if item:getId() == 2930 then 
		item:transform(2931, 1)
		item:decay()
		doRelocate({x = 32004, y = 32667, z = 7},{x = 32004, y = 32667, z = 7})                                  
		Game.transformItemOnMap({x = 32004, y = 32667, z = 7}, 408, 433)
	elseif item:getId() == 2931 then 
		item:transform(2930, 1)
		item:decay()
		Game.transformItemOnMap({x = 32004, y = 32667, z = 7}, 433, 408)   
	end
	return true
end