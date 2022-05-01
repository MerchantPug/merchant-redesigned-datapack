#  Store objectives for profession checks
scoreboard objectives add merchantIsFisherman dummy
scoreboard objectives add merchantIsMason dummy
scoreboard objectives add merchantIsSmith dummy

#   Store Xp so it can check for it before storing uses of trades
execute store result score @s merchantTraderXp run data get entity @s Xp


#   Run a function that stores the amount the player has traded with the unique trade in a scoreboard
function merchantpug:villager/store_trade_amount

#   FISHERMAN

execute as @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run scoreboard players set @s merchantIsFisherman 1

#   Remove actual trade from the villager
execute if score @s merchantIsFisherman matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:417651}}}]


#   MASON

execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsMason 1

#   Remove actual trade from the villager
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231248}}}]
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231249}}}]
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231250}}}]


#   ARMORER/TOOLSMITH/WEAPONSMITH/

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run scoreboard players set @s merchantIsSmith 1

#   Remove actual trade from the villager
execute if score @s merchantIsSmith matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:156655}}}]


#   Remove tag that marks it as modified
tag @s remove merchant.villager_modified

#   Reset randomised trade if the villager hasn't been locked
execute if score @s merchantTraderXp matches 0 run scoreboard players reset @s merchantRandomisedTradeId

#   Run power removal functions (default and any compatible functions)
function #merchantpug:powers_to_remove

#   Reset profession detection scoreboards
scoreboard players reset @s merchantIsMason
scoreboard players reset @s merchantIsFisherman