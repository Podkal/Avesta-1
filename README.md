:::::::::::::::::::::::::::::::::
:: All Avesta Features ::
:::::::::::::::::::::::::::::::::

* Revnetsys
* Redesigned IO model using asynchronous sockets

* Revbattlesys
* New Formula of Armor/Defense
* Weapons configurable in XML and Lua
* Wands, Rods, Burst Arrows and Poison Arrows
* Drunk and Paralyze System
* Creatures can move diagonally
* New Lua Interface (Actions, NPCs)
* Big Changes in Spells
* New Decay System
* Rings and Amulets
* New Monster AI
* Vocations configurable in XML
* Players can summon monsters (utevo res)
* Check if the player knows the spell
* Soul Points
* Last Writer of letters

* Revdbsys
* XML as database removed
* Code cleaned up
* Flexible interface for database drivers
* Transparent database drivers
* Speed up
* Much less memory used (even 1000 times less for database queries!)
* Code optimization
* GCC 4.2 compatibility
* Skull System
* Party System
* Bed System
* Save System
* Mute System
* Rule Violations Report system [ctrl + r]
* Bug report system [ctrl + z]
* Violation window system [ctrl + y]
* Walk to item
* Push, death, walk delays
* Magic effect displayed on air
* Wildcard~ for spells with params
* GM Invisible
* Bursts missing target
* many many more....

:::::::::::::::::::::::::::::::::
:: Change Log by ::
:: Nottinghster ::
:::::::::::::::::::::::::::::::::

----- Added -----

.:: Lua Functions ::.

* Added function onAdvance(cid) (7.4 - 7.6 - 7.7).
* Added function "setPlayerQuest" (7.4 - 7.6 - 7.7).
* Added function mysqlQuery() (7.4 - 7.6 - 7.7).
* Added function getItemWeightByID(itemid) (7.4 - 7.6 - 7.7).
* Added function getItemNameById(itemid) (7.4 - 7.6 - 7.7).
* Added function percentChance(chance) (7.4 - 7.6 - 7.7).

.:: Commands ::

* Added !changesex command (7.4 - 7.6 - 7.7).
* Added /gmspeed command (7.4 - 7.6 - 7.7).
* Added /bc command (7.4 - 7.6 - 7.7).
* Added /gmoutfit command (7.4 - 7.6 - 7.7).
* Added /clean command (7.4 - 7.6 - 7.7).
* Added /leavehouse command (7.4 - 7.6 - 7.7).

.:: Systems ::.

* Added Waypoint system (7.4 - 7.6 - 7.7).
* Added Gamemaster look (show healthpoints and manapoints of creatures, itemiD, subtype, actionid, uniqueid and position) (7.4 - 7.6 - 7.7).
* Added New channel Trade-Rookgaard (7.4 - 7.6 - 7.7).
* Added Level and muted system to Trade and Trade-Rookgaard channels (7.4 - 7.6 - 7.7).
* Added Muted system on Help Channel (7.4 - 7.6 - 7.7).
* Added Push delay time System (7.4 - 7.6 - 7.7).
* Added Real Tibia Save/Clean System (7.4 - 7.6 - 7.7).
* Added A better Clean Map System (7.4 - 7.6 - 7.7).
* Added Server Priority System (7.4 - 7.6 - 7.7).
* Added Free Premium System (7.4 - 7.6 - 7.7).
* Added Spells Talk in Orange System (7.4 - 7.6 - 7.7).
* Added VIP System (7.4 - 7.6 - 7.7).
* Added Automatic Backup System (configurable at backup.bat) (7.4 - 7.6 - 7.7).
* Added Bank System (Deposit, Withdraw, Transfer) (7.4 - 7.6 - 7.7).
* Added Bless System (7.4 - 7.6 - 7.7).
* Added Exp Formula Type System (7.4 - 7.6 - 7.7). **

** (Original Tibia Exp formula, Tibianic Exp formula, MasterCores Exp formula)

----- Fixes -----

* Fixed Chat Channels (7.4 - 7.6 - 7.7).
* Fixed Monsters Double Hit. (7.4 - 7.6 - 7.7).
* Fixed GM talk red on Channels. (7.4 - 7.6 - 7.7).
* Fixed All amulets, now are working fine (7.4 - 7.6 - 7.7).
* Fixed Stages System (7.4 - 7.6 - 7.7).
* Fixed Ban Death bug (7.4 - 7.6 - 7.7).
* Fixed Login Debug (7.7).
* Fixed Invisibility (7.4 - 7.7).
* Fixed Minimap Click bug (7.7).
* Fixed Monster Fleeing Attack (7.4 - 7.6 - 7.7).
* Fixed Clean Map System (7.4 - 7.6 - 7.7).
* Fixed UH trap (7.4)
* Fixed Cannot walk over 2 or more items with height (7.4).
* Fixed Rope won't work if there are items on the rope spot (7.4).
* Fixed Stamped letter (7.4).
* Fixed Teleports (7.4).
* Fixed Spam bug of spells (7.4 - 7.6 - 7.7).
* Fixed Auto-Follow delay (7.4 - 7.6 - 7.7).
* Fixed Monsters Behaviour (7.4 - 7.6 - 7.7).
* Fixed "Hicks!" should be yellow, when you are drunk (7.4 - 7.6 - 7.7).
* Fixed getTibiaTime() function (7.4 - 7.6 - 7.7).
