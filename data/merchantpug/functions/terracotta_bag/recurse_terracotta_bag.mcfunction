#   Clear the shulker box before using it
function ioi-pi:impl/clear_shulker_box

#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #inventory_elements giveTerracotta if data entity @s Inventory[]


#   Get the sum of `#inventory_elements` and `#eyes_elements` score holders to determine if the Terracotta should be spawned or given
execute store result score #total_elements giveTerracotta run scoreboard players add #inventory_elements giveTerracotta 1

#   Prepare the Terracotta items in the shulker box
execute as @s[tag = merchant.terracotta_bag_warm] run loot insert -30000000 -64 1602 loot merchantpug:gameplay/terracotta_bag_warm
execute as @s[tag = merchant.terracotta_bag_cool] run loot insert -30000000 -64 1602 loot merchantpug:gameplay/terracotta_bag_cool
execute as @s[tag = merchant.terracotta_bag_shades] run loot insert -30000000 -64 1602 loot merchantpug:gameplay/terracotta_bag_shades

#   If the score of the `#total_elements` score holder is 41 or greater, spawn the Terracotta items at the position of the player. Otherwise, give the Terracotta items
execute if score #total_elements giveTerracotta matches 41.. run loot spawn ~ ~ ~ mine -30000000 -64 1602 minecraft:air{drop_contents: 1b}

execute unless score #total_elements giveTerracotta matches 41.. run loot give @s mine -30000000 -64 1602 minecraft:air{drop_contents: 1b}

scoreboard players remove #recurse giveTerracotta 1

#   Recurse the function if '#recurse''s score of 'giveTerracotta' is 1 or more
execute if score #recurse giveTerracotta matches 1.. run function merchantpug:terracotta_bag/recurse_terracotta_bag