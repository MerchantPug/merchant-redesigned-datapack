#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #inventory_elements gravel if data entity @s Inventory[]

#   Get the sum of `#inventory_elements` and `#total_elements` score holders to determine if the Flint should be spawned or given
execute store result score #total_elements gravel run scoreboard players add #inventory_elements gravel 1

#   Prepare the Flint item in the shulker box
data modify block -30000000 0 1602 Items set value [{Slot:0b, id:"minecraft:flint", Count:1b}]
execute store result block -30000000 0 1602 Items[{Slot:0b}].Count byte 1 run scoreboard players get #items_to_give gravel

#   If the score of the `#total_elements` score holder is 41 or greater, spawn the Emerald items at the position of the player. Otherwise, give the Flint items
execute if score #total_elements gravel matches 41.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

execute unless score #total_elements gravel matches 41.. run loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

#   Do some clean up
data remove block -30000000 0 1602 Items
scoreboard players reset #items_to_give gravel