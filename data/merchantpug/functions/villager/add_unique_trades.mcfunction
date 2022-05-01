#  Store objectives for rng
scoreboard objectives add rng dummy

#  Store objectives for profession checks
scoreboard objectives add merchantIsFisherman dummy
scoreboard objectives add merchantIsMason dummy

#   Store Xp so it can check for it before storing uses of trades
execute store result score @s merchantTraderXp run data get entity @s Xp

#   Initial setup of Randomised Trade ID score
scoreboard players add @s merchantRandomisedTradeId 0

#
#   MASON
#
execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsMason 1

execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 0 store result score @s merchantRandomisedTradeId run loot spawn ~ ~ ~ loot merchantpug:random/mason_rng

#   Terracotta Bag Warm (Random Trade 1)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Warm)","italic":false}'},CustomModelData:231248}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 store result entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231248}}}].uses int 1 run scoreboard players get @s merchantTraderTradeAmount

#   Terracotta Bag Cool (Random Trade 2)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Cool)","italic":false}'},CustomModelData:231249}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 store result entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231249}}}].uses int 1 run scoreboard players get @s merchantTraderTradeAmount

#   Terracotta Bag Shades (Random Trade 3)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Cool)","italic":false}'},CustomModelData:231250}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 store result entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231250}}}].uses int 1 run scoreboard players get @s merchantTraderTradeAmount



#
#   FISHERMAN
#
execute as @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run scoreboard players set @s merchantIsFisherman 1

execute if score @s merchantIsFisherman matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:6,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:bread",Count:3b,tag:{display:{Name:'{"text":"Burley","italic":false}'},CustomModelData:417651}}}

execute if score @s merchantIsFisherman matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:417651}}}].uses int 1 run scoreboard players get @s merchantTraderTradeAmount



#   Add tag that marks it as modified
tag @s add merchant.villager_modified



#   Reset profession detection scoreboards
scoreboard players reset @s merchantIsMason
scoreboard players reset @s merchantIsFisherman