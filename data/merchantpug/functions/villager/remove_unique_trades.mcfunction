#  Store objectives for profession checks
scoreboard objectives add merchantIsButcher dummy
scoreboard objectives add merchantIsCartographer dummy
scoreboard objectives add merchantIsCleric dummy
scoreboard objectives add merchantIsFarmer dummy
scoreboard objectives add merchantIsFisherman dummy
scoreboard objectives add merchantIsFletcher dummy
scoreboard objectives add merchantIsLeatherworker dummy
scoreboard objectives add merchantIsLibrarian dummy
scoreboard objectives add merchantIsMason dummy
scoreboard objectives add merchantIsShepherd dummy
scoreboard objectives add merchantIsSmith dummy


#   Run a function that stores the amount the player has traded with the unique trade in a scoreboard
function merchantpug:villager/store_trade_amount


#   BUTCHER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run scoreboard players set @s merchantIsButcher 1

#   Remove actual trade from the villager
execute if score @s merchantIsButcher matches 1 if score @s merchantRandomisedTradeId matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:554615}}}]


#   CARTOGRAPHER
#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run scoreboard players set @s merchantIsCartographer 1

execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Jungle Traveler Map"}'}}}}]
execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 2 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Flower Forest Traveler Map"}'}}}}]
execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 3 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Badlands Traveler Map"}'}}}}]
execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 4 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Ice Spikes Traveler Map"}'}}}}]
execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 5 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Warm Ocean Traveler Map"}'}}}}]


#   CLERIC

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run scoreboard players set @s merchantIsCleric 1

#   Remove additional trade from the villager
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416515}}}]
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 2 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416516}}}]
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 3 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416517}}}]
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 4 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416518}}}]
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 5 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416519}}}]
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 6 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416520}}}]


#   FARMER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run scoreboard players set @s merchantIsFarmer 1

#   Remove actual trade from the villager
execute if score @s merchantIsFarmer matches 1 if score @s merchantRandomisedTradeId matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:554616}}}]


#   FISHERMAN

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run scoreboard players set @s merchantIsFisherman 1

#   Remove actual trade from the villager
execute if score @s merchantIsFisherman matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:417651}}}]


#   LEATHERWORKER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run scoreboard players set @s merchantIsLeatherworker 1

#   Remove actual trade from the villager
execute if score @s merchantIsLeatherworker matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bundle"}}]


#   LIBRARIAN

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run scoreboard players set @s merchantIsLibrarian 1

#   Remove actual trade from the villager
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"The Big Catch",author:"Jon B. Arnackle"}}}]
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 2 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"VCP-1204",author:"VCP Foundation"}}}]

#   MASON

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsMason 1

#   Remove actual trade from the villager
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231248}}}]
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231249}}}]
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231250}}}]


#   SHEPHERD

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run scoreboard players set @s merchantIsShepherd 1

#   Remove actual trade from the villager
execute if score @s merchantIsShepherd matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:15641}}}]


#   ARMORER/TOOLSMITH/WEAPONSMITH/

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run scoreboard players set @s merchantIsSmith 1

#   Remove actual trade from the villager
execute if score @s merchantIsSmith matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:156655}}}]


#   Remove tag that marks it as modified
tag @s remove merchant.villager_modified

#   Run power removal functions (default and any compatible functions)
function #merchantpug:powers_to_remove

#   Reset profession detection scoreboards
scoreboard players reset @s merchantIsCartographer
scoreboard players reset @s merchantIsCleric
scoreboard players reset @s merchantIsLeatherworker
scoreboard players reset @s merchantIsLibrarian
scoreboard players reset @s merchantIsMason
scoreboard players reset @s merchantIsFisherman
scoreboard players reset @s merchantIsFletcher
scoreboard players reset @s merchantIsShepherd
scoreboard players reset @s merchantIsSmith