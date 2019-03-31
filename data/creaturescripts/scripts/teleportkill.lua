local teleportToPosition = Position(32001, 32625, 7)

local function removeTeleport(position)
    local teleportItem = Tile(position):getItemById(1949)
    if teleportItem then
        teleportItem:remove()
        position:sendMagicEffect(CONST_ME_POFF)
    end
end

function onKill(creature, target)
    local targetMonster = target:getMonster()
    if not targetMonster or targetMonster:getName():lower() ~= 'orshabaal' then
        return true
    end

    local position = targetMonster:getPosition()
    position:sendMagicEffect(CONST_ME_TELEPORT)
    local item = Game.createItem(1949, 1, position)   
    item:setAttribute(ITEM_ATTRIBUTE_MOVEMENTID, 1004)
	if item:isTeleport() then
        item:setDestination(teleportToPosition)
    end
    targetMonster:say('test has been defeated, claim your rewards, mortals! It will disappear in 2 minutes.', TALKTYPE_MONSTER_SAY, 0, 0, position)

    --remove portal after 1 min
    addEvent(removeTeleport, 2 * 30 * 1000, position)
    return true
end



