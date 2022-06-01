#> ioi-pi:impl/modify_inventory/apply/armor
#
#   > Replace the item from the player's armor slots with the items from the shulker box (from slot 0 to slot 3)
#
#@internal


loot replace entity @s armor.feet 4 mine -30000000 0 1602 minecraft:air{drop_contents:1b}
