#> ioi-pi:impl/modify_inventory/setup/offhand
#
#   > Prepare the item from the player's offhand slot into the shulker box
#
#@internal


#   Clear the contents of the `offhand` NBT path
data modify storage ioi-pi:temp offhand set value []


#   Append the item from the player's offhand slot into the `offhand` NBT path
data modify storage ioi-pi:temp offhand append from entity @s Inventory[{Slot: -106b}]


#   Set the slot value of the element to `0b` to indicate that the element will be placed at the very first slot of the shulker box
data modify storage ioi-pi:temp offhand[0].Slot set value 0b


#   Set the contents of the shulker box as the contents of the `offhand` NBT path
data modify block -30000000 0 1602 Items set from storage ioi-pi:temp offhand
