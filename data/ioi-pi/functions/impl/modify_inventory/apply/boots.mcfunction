#> ioi-pi:impl/modify_inventory/apply/boots
#
#   > Replace the item from the player's feet armor slot with the item from the first slot of the shulker box
#
#@internal


loot replace entity @s armor.feet 1 mine -30000000 0 1602 minecraft:air{drop_contents:1b}
