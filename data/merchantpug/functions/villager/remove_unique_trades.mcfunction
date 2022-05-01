#  Store objectives for profession checks
scoreboard objectives add merchantIsFisherman dummy
scoreboard objectives add merchantIsMason dummy

#   Store Xp so it can check for it before storing uses of trades
execute store result score @s merchantTraderXp run data get entity @s Xp

#
#   MASON
#

execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsMason 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 1 store result score @s merchantTraderTradeAmount run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231248}}}].uses
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 2 store result score @s merchantTraderTradeAmount run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231249}}}].uses
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 3 store result score @s merchantTraderTradeAmount run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231250}}}].uses

#   Remove actual trade from the villager
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231248}}}]
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231249}}}]
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231250}}}]

#
#   FISHERMAN
#

execute as @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run scoreboard players set @s merchantIsFisherman 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsFisherman matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeAmount run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:417651}}}].uses

#   Remove actual trade from the villager
execute if score @s merchantIsFisherman matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:417651}}}]

#   Remove tag that marks it as modified
tag @s remove merchant.villager_modified

#   Reset randomised trade if the villager hasn't been locked
execute if score @s merchantTraderXp matches 0 run scoreboard players reset @s merchantRandomisedTradeId

#   Reset profession detection scoreboards
scoreboard players reset @s merchantIsMason
scoreboard players reset @s merchantIsFisherman

power revoke @s merchantpug:transfer_villager_scores merchantpug:transfer_scores
power revoke @s merchantpug:transfer_villager_scores_tmo_compat merchantpug:transfer_scores