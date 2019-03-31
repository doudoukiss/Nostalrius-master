local config = {
    level = 2
}

local SKINS = {
    -- Minotaurs
    [4011] = {7, 5091},
    [4052] = {6, 5091},
    [4057] = {8, 5091},
    [4047] = {10, 5091},
    
	
	
	-- Dragon
    [4025] = {3, 5092},
	
	-- Dragon Lord
    [4062] = {3, 5093},


   



    

   
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
    if(getPlayerLevel(cid) < config.level) then
        doPlayerSendCancel(cid, "You have to be at least Level " .. config.level .. " to use this tool.")
        return true
    end

    local skin = SKINS[itemEx.itemid]
    if(not skin) then
        doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
        return true
    end

    local random, effect = math.random(1, 100), CONST_ME_MAGIC_GREEN
    if(random <= skin[1]) then
        doPlayerAddItem(cid, skin[2], 1)
    elseif(skin[3] and random >= skin[3]) then
        doPlayerAddItem(cid, skin[4], 1)
    else
        effect = CONST_ME_POFF
    end

    doSendMagicEffect(toPosition, effect)
    doTransformItem(itemEx.uid, itemEx.itemid + 1)
    return true
end