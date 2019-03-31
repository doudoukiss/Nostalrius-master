
local this_script_is_awesome = true -- The choice is your if you want the script work then you leave it true

local att3 = {
prem_days = 7, -- Edit how many days
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
if this_script_is_awesome == true then
if isPlayer(cid) then
doPlayerAddPremiumDays(cid, att3.prem_days)
doPlayerSendTextMessage(cid, 19, "You used a premium scroll and gained 7 days of premium account.")

doRemoveItem(item.uid, 1)
else
doPlayerSendTextMessage(cid, 19, "The admin dont want to admit it -.-.")
end
end
end