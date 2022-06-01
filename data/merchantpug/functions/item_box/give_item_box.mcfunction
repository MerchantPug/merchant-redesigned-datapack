#   Play sounds upon using the item
playsound minecraft:block.metal.place player @a ~ ~ ~ 1.0 1.6
playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~ 0.75 0.85

#   Setup scoreboards
scoreboard objectives add itemBox dummy

#   Clear the shulker box before using it
function ioi-pi:impl/clear_shulker_box

#   Count how many elements are in the `Inventory` NBT path of the player this function is executing as
execute store result score #inventory_elements itemBox if data entity @s Inventory[]


#   Get the sum of `#inventory_elements` and `#eyes_elements` score holders to determine if the Terracotta should be spawned or given
execute store result score #total_elements itemBox run scoreboard players add #inventory_elements itemBox 1

#   Prepare the random items in the shulker box
loot insert -30000000 0 1602 loot merchantpug:gameplay/item_box

#   If the score of the `#total_elements` score holder is 41 or greater, spawn the Terracotta items at the position of the player. Otherwise, give the Terracotta items
execute if score #total_elements itemBox matches 41.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

execute unless score #total_elements itemBox matches 41.. run loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}