-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
	if (item2.actionid == 0 or
		(isInArray(LOCKED_DOORS, item2.itemid) == false and
		isInArray(LOCKED_DOORS, item2.itemid - 1) == false and
		isInArray(LOCKED_DOORS, item2.itemid - 2) == false)) then
		return FALSE
	end
	
	local canOpen = (item.actionid == 10000 or item.actionid == item2.actionid)
	if (not(canOpen)) then
		doPlayerSendCancel(cid, "The key does not match.")
		return TRUE
	end

	if(isInArray(LOCKED_DOORS, item2.itemid) == TRUE) then
		doTransformItem(item2.uid, item2.itemid + 2)
	elseif(isInArray(LOCKED_DOORS, item2.itemid - 2) == TRUE) then
		doTransformItem(item2.uid, item2.itemid - 2)
	else
		doTransformItem(item2.uid, item2.itemid - 1)
	end
	
	return TRUE
end 