function onAddItem(item, tileitem, position)
	if item:getType():isMovable() and Tile(position):getThingCount() == 2 then
		item:getPosition():sendMagicEffect(2)
		item:remove()
	end
	return true
end