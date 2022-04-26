#> ioi-pi:impl/modify_inventory/apply/leggings
#
#   > Replace the item from the player's legs with the item from the first slot of the shulker box
#
#@internal


loot replace entity @s armor.legs 1 mine -30000000 0 1602 minecraft:air{drop_contents:1b}
