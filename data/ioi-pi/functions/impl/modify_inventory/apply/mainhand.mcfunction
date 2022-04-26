#> ioi-pi:impl/modify_inventory/apply/mainhand
#
#   > Replace the item from the player's mainhand with the item from the first slot of the shulker box
#
#@internal


loot replace entity @s weapon.mainhand 1 mine -30000000 0 1602 minecraft:air{drop_contents:1b}
