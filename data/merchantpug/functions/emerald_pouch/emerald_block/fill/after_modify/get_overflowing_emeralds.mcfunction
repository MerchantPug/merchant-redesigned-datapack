data remove block -30000000 0 1602 Items

#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #inventory_elements emeralds if data entity @s Inventory[]

#   Get the sum of `#inventory_elements` and `#eyes_elements` score holders to determine if the Emeralds should be spawned or given
execute store result score #total_elements emeralds run scoreboard players add #inventory_elements emeralds 1

#   Modify the MinecraftPhi Shulker Box to contain the remainder of emerald blocks
data modify block -30000000 0 1602 Items append value [{Slot:0b, id:"minecraft:emerald", Count:1b}]
execute store result block -30000000 0 1602 Items[{Slot:0b, id:"minecraft:emerald"}].Count byte 1 run scoreboard players get #emerald_block_remainder emeralds

#   If the score of the `#total_elements` score holder is 41 or greater, spawn the Emerald items at the position of the player. Otherwise, give the Emerald items
execute if score #total_elements emeralds matches 41.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

execute unless score #total_elements emeralds matches 41.. run loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

#   Cleanup block remainder and items in shulker
scoreboard players reset #emerald_block_remainder emeralds

data remove block -30000000 0 1602 Items