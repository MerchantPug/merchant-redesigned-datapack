#> ioi-pi:impl/modify_inventory/apply/helmet
#
#   > Replace the item from the player's head armor slot with the item from the first slot of the shulker box
#
#@internal


loot replace entity @s armor.head 1 mine -30000000 0 1602 minecraft:air{drop_contents:1b}