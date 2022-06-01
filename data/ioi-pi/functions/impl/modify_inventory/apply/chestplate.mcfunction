#> ioi-pi:impl/modify_inventory/apply/chestplate
#
#   > Replace the item from the player's chest armor slot with the item from the first slot of the shulker box
#
#@internal


loot replace entity @s armor.chest 1 mine -30000000 0 1602 minecraft:air{drop_contents:1b}
