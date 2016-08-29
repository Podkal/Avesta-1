-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Creature Scripts)

function onLogout(cid)

	-- Online List (Website)
	mysqlQuery("UPDATE `players` SET `status` = '0' WHERE `name` = \"" .. getPlayerName(cid) .. "\"", "SET")

    return TRUE
end
