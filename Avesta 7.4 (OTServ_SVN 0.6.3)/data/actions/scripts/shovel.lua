-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

function onUse(cid, item, frompos, item2, topos)
 
aID = 777
ticks = 30
topos = {x=topos.x, y=topos.y, z=topos.z}
local rand = math.random(1,100)

 if item2.itemid == 28 then
  return FALSE
 end
 if item2.itemid == 468 then
  doTransformItem(item2.uid,469)
  doDecayItem(item2.uid)
 elseif item2.itemid == 481 then
  doTransformItem(item2.uid,482)
  doDecayItem(item2.uid)
 elseif item2.itemid == 231 and item2.actionid == aID then -- areia
  doTransformItem(item2.uid,482) -- areia
  doDecayItemTo(topos, item2.itemid, ticks) -- areia
  doSendMagicEffect(topos, CONST_ME_POFF) -- areia
 elseif item2.itemid == 483 then
  doTransformItem(item2.uid,484)
  doDecayItem(item2.uid)
 elseif item2.itemid == 231 then
  if rand > 85 and item2.actionid == 0 then
   doSummonCreature("Scarab", topos)
  elseif rand == 15 and item2.actionid == 0 then
   doPlayerAddItem(cid,2159,1)
  else
   doSendMagicEffect(topos,2)
  end
 else
  return FALSE
 end
 return TRUE
 end