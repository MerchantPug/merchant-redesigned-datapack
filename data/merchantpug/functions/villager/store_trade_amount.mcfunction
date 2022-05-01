#  Store objectives for profession checks
scoreboard objectives add merchantIsFisherman dummy
scoreboard objectives add merchantIsMason dummy
scoreboard objectives add merchantIsSmith dummy

#   Store Xp so it can check for it before storing uses of trades
execute store result score @s merchantTraderXp run data get entity @s Xp


#   FISHERMAN

execute as @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run scoreboard players set @s merchantIsFisherman 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsFisherman matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:417651}}}].uses


#   MASON

execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsMason 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 1 store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231248}}}].uses
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 2 store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231249}}}].uses
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 3 store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231250}}}].uses


#   ARMORER/TOOLSMITH/WEAPONSMITH/

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run scoreboard players set @s merchantIsSmith 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsSmith matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:156655}}}].uses