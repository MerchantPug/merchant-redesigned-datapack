#> ioi-pi:impl/modify_inventory/apply/enderchest
#
#   > Replace the items from the player's ender chest (from slot 0 to slot 27) with the items from the shulker box (from slot 0 to slot 27)
#
#@internal


loot replace entity @s enderchest.0 27 mine -30000000 0 1602 minecraft:air{drop_contents:1b}
