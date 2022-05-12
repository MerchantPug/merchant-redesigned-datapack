#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #inventory_elements emeralds if data entity @s Inventory[]

#   Get the sum of `#inventory_elements` and `#total_elements` score holders to determine if the Emeralds should be spawned or given
execute store result score #total_elements emeralds run scoreboard players add #inventory_elements emeralds 1

#   Prepare the Emerald item in the shulker box
data modify block -30000000 -64 1602 Items set value [{Slot:0b, id:"minecraft:emerald", Count:1b}]
execute store result block -30000000 -64 1602 Items[{Slot:0b}].Count byte 1 run scoreboard players get #withdraw_amount emeralds

#   If the score of the `#total_elements` score holder is 41 or greater, spawn the Emerald items at the position of the player. Otherwise, give the Emerald items
execute if score #total_elements emeralds matches 41.. run loot spawn ~ ~ ~ mine -30000000 -64 1602 minecraft:air{drop_contents: 1b}

execute unless score #total_elements emeralds matches 41.. run loot give @s mine -30000000 -64 1602 minecraft:air{drop_contents: 1b}

#   Do some clean up
data remove block -30000000 -64 1602 Items