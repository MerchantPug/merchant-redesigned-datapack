#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #inventory_elements condiment if data entity @s Inventory[]

#   Setup the shulker
data modify block -30000000 -64 1602 Items append value {Slot:0b, id:"minecraft:dirt", Count: 1b}
data modify block -30000000 -64 1602 Items[{Slot:0b}].id append from storage merchantpug:previous_food item.id
data modify block -30000000 -64 1602 Items[{Slot:0b}].tag append from storage merchantpug:previous_food item.tag

execute store result storage ioi-pi:output item.Count byte 1 run scoreboard players get #condiment_count condiment
#   Get the sum of `#inventory_elements` and `#eyes_elements` score holders to determine if the Terracotta should be spawned or given
execute store result score #total_elements condiment run scoreboard players add #inventory_elements condiment 1

#   If the score of the `#total_elements` score holder is 37 or greater, spawn the Food items at the position of the player. Otherwise, give the Food items
execute if score #total_elements condiment matches 37.. run loot spawn ~ ~ ~ mine -30000000 -64 1607 minecraft:air{drop_contents: 1b}

execute unless score #total_elements condiment matches 37.. run loot give @s mine -30000000 -64 1607 minecraft:air{drop_contents: 1b}

execute store result block -30000000 -64 1603 Items[{Slot:0b}] byte 1 run scoreboard players get #count condiment

data remove block -30000000 -64 1602 Items