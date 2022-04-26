#> ioi-pi:impl/modify_inventory/apply/inventory
#
#   > Replace the items from the player's inventory slots (from slot 0 to slot 27) with the items from the shulker box (from slot 0 to slot 27)
#
#@internal


loot replace entity @s inventory.0 27 mine -30000000 0 1602 minecraft:air{drop_contents:1b}
