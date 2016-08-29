-- Include external classes.
dofile(getDataDir() .. 'npc/scripts/lib/npcsystem/npcsystem.lua')

-- Callback for isPremium(cid) so Jiddo's npcsystem works
function isPlayerPremiumCallback(cid)
	return isPremium(cid) == TRUE and true or false
end

-- move to a creature
function moveToCreature(id)
	if(isCreature(id) == FALSE) then
		debugPrint('moveToCreature(): creature not found.')
		return LUA_ERROR
	end
	local pos = getCreaturePosition(id)
	selfMoveTo(pos.x, pos.y, pos.z)
	return LUA_NO_ERROR
end

-- do one step to reach position
function moveToPosition(x,y,z)
	selfMoveTo(x, y, z)
end

-- stop talking
function selfGotoIdle()
		following = false
		attacking = false
		selfAttackCreature(0)
		target = 0
end

-- get count
function getCount(msg)
	b, e = string.find(msg, "%d+")	
	if b == nil or e == nil then
		count = 1
	else
		count = tonumber(string.sub(msg, b, e))
	end	
	if count > 10000 then
		count = 10000
	end
	return count
end

-- get messages
function msgcontains(message, keyword)
	if(type(keyword) == "table") then
		return table.isStrIn(keyword, message)
	end
	local a, b = message:lower():find(keyword:lower())
	if(a ~= nil and b ~= nil) then
		return true
	end
	return false
end

function doSellEmptyVials(cid)
	local empty_vial_money = 0
	while doPlayerRemoveItem(cid, 2006, 1, 0) == 1 do
		empty_vial_money = (empty_vial_money + 5)
	end
	if getNumberValue(empty_vial_money) > 0 then
		doPlayerAddMoney(cid, getNumberValue(empty_vial_money))
		return true
	else
		return false
	end
end

function getNumberValue(msg)
	b, e = string.find(msg, "%d+")
	if b == nil or e == nil then
		count = 1
	else
		count = tonumber(string.sub(msg, b, e))
	end	
	return count
end