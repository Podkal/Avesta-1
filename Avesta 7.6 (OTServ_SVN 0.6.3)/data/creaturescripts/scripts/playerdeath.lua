-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Creature Scripts)

function onDie(cid, corpse)

	-- Online List (Website)
	mysqlQuery("UPDATE `players` SET `status` = '0' WHERE `name` = \"" .. getPlayerName(cid) .. "\"", "SET")
	
	-- Bless System
	if getPlayerStorageValue(cid, 30006) == 1 then
		setPlayerStorageValue(cid, 30007,1)
	end

end