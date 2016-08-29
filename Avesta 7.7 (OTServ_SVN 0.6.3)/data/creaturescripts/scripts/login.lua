-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Creature Scripts)

function onLogin(cid)

	-- Online List (Website)
	if isGameMaster(cid) == FALSE then
		mysqlQuery("UPDATE `players` SET `status` = '1' WHERE `name` = \"" .. getPlayerName(cid) .. "\"", "SET")
	end

	-- Check bugged outfit
	local resultdb = mysqlQuery("SELECT `looktype` FROM `players` WHERE `name` = \"" .. getPlayerName(cid) .. "\"", "looktype")
	local getlooktype = resultdb.looktype
	if getlooktype <= "0" then
		if getPlayerSex(cid) == 0 then
			doCreatureChangeOutfit(cid,{lookType = 267})
		else
			doCreatureChangeOutfit(cid,{lookType = 258})
		end
		doPlayerSendTextMessage(cid, 18, "Something unexpected happened with your outfit and it had to be reset!")
	end

	-- Check Promotion & Bless
	CheckPlayerBlessings(cid)
	CheckPlayerPromotion(cid)

	-- Remove Bless if needed
	registerCreatureEvent(cid, "PlayerDeath")
	if getPlayerStorageValue(cid, 30007) == 1 then
		RemovePlayerBlessing(cid)
		setPlayerStorageValue(cid, 30007, -1)
	end

	-- First Items
	local firstItems = {2050,2382}
	if getPlayerStorageValue(cid, 30001) == -1 then
		for i = 1, table.maxn(firstItems) do
			doPlayerAddItem(cid, firstItems[i], 1)
		end
		if getPlayerSex(cid) == 0 then
			doPlayerAddItem(cid, 2651, 1)
		else
			doPlayerAddItem(cid, 2650, 1)
		end
		local bag = doPlayerAddItem(cid, 1987, 1)
		doAddContainerItem(bag, 2674, 1)
		setPlayerStorageValue(cid, 30001, 1)
	end

	-- Teleport to free town when premiun ends (Main)
	local templo = {x=32369, y=32241, z=7}
	if isPremium(cid) == TRUE then
		if getPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT) == -1 then
			setPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT, 1)
		end
	elseif isPremium(cid) == FALSE then
		if getPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT) == 1 and getPlayerVocation(cid) >= 1 then
			setPlayerStorageValue(cid, STORAGE_PREMIUM_ACCOUNT, -1)
			doPlayerSetTown(cid, 3)
			doTeleportThing(cid, templo)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You have been teleported to Thais. Your premium has been expired!")
		end
	end

	-- Check Donation
	if getPlayerStorageValue(cid, 30011) == 1 and getPlayerVipDays(cid) == 0 then
		doPlayerRemoveVip(cid)
	end

	-- Remaining VIP Days
	if isPlayerVip(cid) == TRUE then
		dataFormat = os.date("%d/%m/%Y", (os.time() + (getPlayerVipDays(cid) * 86400)))
		horaFormat = os.date("%X", (os.time() + (getPlayerVipDays(cid) * 86400)))
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "You have ".. getPlayerVipDays(cid)+1 .." day(s) left of VIP account.")
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Your VIP ends in ".. dataFormat .." at ".. horaFormat ..".")
	end

	return TRUE
end
