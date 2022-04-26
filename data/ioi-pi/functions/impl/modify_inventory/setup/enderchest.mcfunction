#> ioi-pi:impl/modify_inventory/setup/enderchest
#
#   > Prepare the items from the player's ender chest into the shulker box
#
#@internal


#   Set the contents of the shulker box as the contents of the player's `EnderItems` NBT
data modify block -30000000 0 1602 Items set from entity @s EnderItems
