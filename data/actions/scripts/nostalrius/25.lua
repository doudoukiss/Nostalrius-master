function onUse(player, item, fromPosition, target, toPosition)
	if item:getId() == 2772 and Game.isItemThere({x = 32309, y = 31976, z = 13}, 1998) then 
		item:transform(2773, 1)
		item:decay()
		Game.transformItemOnMap({x = 32309, y = 31976, z = 13}, 1998, 1996)
	elseif item:getId() == 2772 then 
		item:transform(2773, 1)
		item:decay()
	elseif item:getId() == 2773 and Game.isItemThere({x = 32309, y = 31976, z = 13}, 1996) then
		item:transform(2772, 1)
		item:decay()
		Game.transformItemOnMap({x = 32309, y = 31976, z = 13}, 1996, 1998)
	elseif item:getId() == 2773 then
		item:transform(2772, 1)
		item:decay()
	end
	return true
end