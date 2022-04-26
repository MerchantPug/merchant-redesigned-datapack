#> ioi-pi:impl/modify_inventory/apply/hotbar
#
#   > Replace the items from the player's hotbar slots (from slot 0 to slot 9) with the items from the shulker box (from slot 0 to slot 9)
#
#@internal


loot replace entity @s hotbar.0 9 mine -30000000 0 1602 minecraft:air{drop_contents:1b}
