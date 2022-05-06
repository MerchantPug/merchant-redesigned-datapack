#   Store Xp so it can check for it before storing uses of trades
execute store result score @s merchantTraderXp run data get entity @s Xp


#   BUTCHER

execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsButcher 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsButcher matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 1 store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:554615}}}].uses


#   CARTOGRAPHER
#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run scoreboard players set @s merchantIsCartographer 1

execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Jungle Traveler Map"}'}}}}].uses
execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 2 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Flower Forest Traveler Map"}'}}}}].uses
execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 3 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Badlands Traveler Map"}'}}}}].uses
execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 4 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Ice Spikes Traveler Map"}'}}}}].uses
execute if score @s merchantIsCartographer matches 1 if score @s merchantRandomisedTradeId matches 5 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Warm Ocean Traveler Map"}'}}}}].uses


#   CLERIC
execute as @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run scoreboard players set @s merchantIsCleric 1

#   Store additional trade amount in villager scoreboard
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416515}}}].uses
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 2 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416516}}}].uses
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 3 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416517}}}].uses
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 4 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416518}}}].uses
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 5 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416519}}}].uses
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 6 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416520}}}].uses


#   LEATHERWORKER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run scoreboard players set @s merchantIsLeatherworker 1

#   Remove actual trade from the villager
execute if score @s merchantIsLeatherworker matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:bundle"}}].uses


#   LIBRARIAN
execute as @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run scoreboard players set @s merchantIsLibrarian 1

execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"The Big Catch",author:"Jon B. Arnackle"}}}].uses
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 2 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"VCP-1204",author:"VCP Foundation"}}}].uses

#   FARMER

execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsFarmer 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsFarmer matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 1 store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:554616}}}].uses


#   FISHERMAN
execute as @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run scoreboard players set @s merchantIsFisherman 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsFisherman matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:417651}}}].uses


#   MASON

execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsMason 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 1 store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231248}}}].uses
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 2 store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231249}}}].uses
execute if score @s merchantIsMason matches 1 if score @s merchantTraderXp matches 1.. if score @s merchantRandomisedTradeId matches 3 store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231250}}}].uses


#   SHEPHERD

execute as @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run scoreboard players set @s merchantIsShepherd 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsShepherd matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:15641}}}].uses


#   ARMORER/TOOLSMITH/WEAPONSMITH/

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run scoreboard players set @s merchantIsSmith 1

#   Store trade amount in villager scoreboard
execute if score @s merchantIsSmith matches 1 if score @s merchantTraderXp matches 1.. store result score @s merchantTraderTradeUses run data get entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:156655}}}].uses