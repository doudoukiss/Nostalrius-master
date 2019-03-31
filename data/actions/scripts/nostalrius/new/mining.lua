local mEffect = 4
local creatures = {pack1 = {"Mineral Rock", "Black Sheep"}}
local rewards = {pack1 = 3031}
local amounts = {pack1 = 5}
local damages = {pack1 = -1}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if target:isCreature(target) and isInArray(creatures.pack1, getCreatureName(target)) then
        toPosition:sendMagicEffect(mEffect)
        player:addItem(rewards.pack1, amounts.pack1)
        target:addHealth(damages.pack1)

    elseif target:isCreature(target) == false then
        player:sendTextMessage(MESSAGE_STATUS_WARNING, "You can only mine mineral rocks..") -- The error message it will give if the player is trying to skin something that isn't a creature.
    else player:sendTextMessage(MESSAGE_STATUS_WARNING, "You cannot mine this.") -- The error message it will give if t he player is trying to skin a creature which isn't added in the configuration above.
        return true
    end
end