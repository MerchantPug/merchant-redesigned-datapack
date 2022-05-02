#  Store objectives for profession checks
scoreboard objectives add foundJungle dummy
scoreboard objectives add foundFlowerForest dummy
scoreboard objectives add foundBadlands dummy
scoreboard objectives add foundMountain dummy
scoreboard objectives add foundNothing dummy

#   Run loot table for random trade if the 'merchantRandomisedTradeId' score of the villager is 0
execute if score @s merchantRandomisedTradeId matches 0 store result score @s merchantRandomisedTradeId run loot spawn ~ ~ ~ loot merchantpug:random/cartographer_rng
execute if score @s merchantRandomisedTradeId matches 1 if score #not_found foundJungle matches 1 run scoreboard players set @s merchantRandomisedTradeId 0
execute if score @s merchantRandomisedTradeId matches 2 if score #not_found foundFlowerForest matches 1 run scoreboard players set @s merchantRandomisedTradeId 0
execute if score @s merchantRandomisedTradeId matches 3 if score #not_found foundBadlands matches 1 run scoreboard players set @s merchantRandomisedTradeId 0
execute if score @s merchantRandomisedTradeId matches 4 if score #not_found foundMountain matches 1 run scoreboard players set @s merchantRandomisedTradeId 0

#   Add a placeholder map to the villager's trade table
execute run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:12,buy:{id:"minecraft:emerald",Count:12b},buyB:{id:"minecraft:compass",Count:1b},sell:{id:"minecraft:map",Count:1b,tag:{merchant:{map:"placeholder"}}},priceMultiplier:0.2f}
execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:map",tag:{merchant:{map:"placeholder"}}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses



#   Jungle Biome Map (Random Trade 1)

#   Locate a 'merchantpug:jungle_marker' structure to make sure one is found before giving the villager a trade
execute if score @s merchantRandomisedTradeId matches 1 at @s store success score #temp foundJungle run locate merchantpug:jungle_marker

execute if score @s merchantRandomisedTradeId matches 1 if score #temp foundJungle matches 0 run scoreboard players set #not_found foundJungle 1

#   If a jungle is found...
#   Setup replacement map in the yellow shulker box
execute if score @s merchantRandomisedTradeId matches 1 unless score #not_found foundJungle matches 1 run loot insert -30000000 0 1602 loot merchantpug:gameplay/biome_maps/jungle_map

#   Set villager trade to replacement map
execute if score @s merchantRandomisedTradeId matches 1 unless score #not_found foundJungle matches 1 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:map",tag:{merchant:{map:"placeholder"}}}}].sell.id set value "minecraft:filled_map"
execute if score @s merchantRandomisedTradeId matches 1 unless score #not_found foundJungle matches 1 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{merchant:{map:"placeholder"}}}}].sell.tag set from block -30000000 0 1602 Items[{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Jungle Traveler Map"}'}}}].tag


#   Flower Forest Biome Map (Random Trade 2)

#   Locate a 'merchantpug:flower_forest_marker' structure to make sure one is found before giving the villager a trade
execute if score @s merchantRandomisedTradeId matches 2 at @s store success score #temp foundFlowerForest run locate merchantpug:flower_forest_marker

execute if score @s merchantRandomisedTradeId matches 2 if score #temp foundFlowerForest matches 0 run scoreboard players set #not_found foundFlowerForest 1

#   If a flower forest is found...
#   Setup replacement map in the yellow shulker box
execute if score @s merchantRandomisedTradeId matches 2 unless score #not_found foundFlowerForest matches 2 run loot insert -30000000 0 1602 loot merchantpug:gameplay/biome_maps/flower_forest_map

#   Set villager trade to replacement map
execute if score @s merchantRandomisedTradeId matches 2 unless score #not_found foundFlowerForest matches 2 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:map",tag:{merchant:{map:"placeholder"}}}}].sell.id set value "minecraft:filled_map"
execute if score @s merchantRandomisedTradeId matches 2 unless score #not_found foundFlowerForest matches 2 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{merchant:{map:"placeholder"}}}}].sell.tag set from block -30000000 0 1602 Items[{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Flower Forest Traveler Map"}'}}}].tag


#   Badlands Biome Map (Random Trade 3)

#   Locate a 'merchantpug:badlands_marker' structure to make sure one is found before giving the villager a trade
execute if score @s merchantRandomisedTradeId matches 3 at @s store success score #temp foundBadlands run locate merchantpug:badlands_marker

execute if score @s merchantRandomisedTradeId matches 3 if score #temp foundBadlands matches 0 run scoreboard players set #not_found foundBadlands 1

#   If a badlands is found...
#   Setup replacement map in the yellow shulker box
execute if score @s merchantRandomisedTradeId matches 3 unless score #not_found foundBadlands matches 2 run loot insert -30000000 0 1602 loot merchantpug:gameplay/biome_maps/badlands_map

#   Set villager trade to replacement map
execute if score @s merchantRandomisedTradeId matches 3 unless score #not_found foundBadlands matches 2 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:map",tag:{merchant:{map:"placeholder"}}}}].sell.id set value "minecraft:filled_map"
execute if score @s merchantRandomisedTradeId matches 3 unless score #not_found foundBadlands matches 2 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{merchant:{map:"placeholder"}}}}].sell.tag set from block -30000000 0 1602 Items[{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Badlands Traveler Map"}'}}}].tag


#   Badlands Biome Map (Random Trade 4)

#   Locate a 'merchantpug:badlands_marker' structure to make sure one is found before giving the villager a trade
execute if score @s merchantRandomisedTradeId matches 4 at @s store success score #temp foundMountain run locate merchantpug:mountain_marker

execute if score @s merchantRandomisedTradeId matches 4 if score #temp foundMountain matches 0 run scoreboard players set #not_found foundMountain 1

#   If a badlands is found...
#   Setup replacement map in the yellow shulker box
execute if score @s merchantRandomisedTradeId matches 4 unless score #not_found foundMountain matches 2 run loot insert -30000000 0 1602 loot merchantpug:gameplay/biome_maps/mountain_map

#   Set villager trade to replacement map
execute if score @s merchantRandomisedTradeId matches 4 unless score #not_found foundMountain matches 2 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:map",tag:{merchant:{map:"placeholder"}}}}].sell.id set value "minecraft:filled_map"
execute if score @s merchantRandomisedTradeId matches 4 unless score #not_found foundMountain matches 2 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:filled_map",tag:{merchant:{map:"placeholder"}}}}].sell.tag set from block -30000000 0 1602 Items[{id:"minecraft:filled_map",tag:{display:{Name:'{"text":"Mountain Traveler Map"}'}}}].tag



#   Clear the shulker box
data remove block -30000000 0 1602 Items

#   Set the 'foundNothing' score for #temp if a trade was not found 
execute if score @s merchantRandomisedTradeId matches 0 run scoreboard players set #temp foundNothing 1 
execute if score @s merchantRandomisedTradeId matches 1 if score #not_found foundJungle matches 1 run scoreboard players set #temp foundNothing 1
execute if score @s merchantRandomisedTradeId matches 2 if score #not_found foundFlowerForest matches 1 run scoreboard players set #temp foundNothing 1
execute if score @s merchantRandomisedTradeId matches 3 if score #not_found foundBadlands matches 1 run scoreboard players set #temp foundNothing 1
execute if score @s merchantRandomisedTradeId matches 4 if score #not_found foundMountain matches 1 run scoreboard players set #temp foundNothing 1

#   Set the 'foundNothing' score for #all if all biomes have not been found
execute if score #not_found foundJungle matches 1 if score #not_found foundFlowerForest matches 1 if score #not_found foundBadlands matches 1 if score #not_found foundMountain matches 1 run scoreboard players set #all foundNothing 1

#  Reset scores upon 
execute if score #temp foundNothing matches 1 run scoreboard players set @s merchantRandomisedTradeId 0
execute if score #temp foundNothing matches 1 run data remove entity @s Offers.Recipes[{sell:{id:"minecraft:map",tag:{merchant:{map:"placeholder"}}}}]
scoreboard players reset #temp foundNothing

#   Recurse the function if a biome was not found but if not all biomes have been checked
execute if score #temp foundNothing matches 1 unless score #all foundNothing matches 1 run function merchantpug:villager/add_cartographer_trades