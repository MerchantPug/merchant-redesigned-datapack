#> ioi-pi:impl/modify_inventory/setup/helmet
#
#   > Prepare the item from the player's head armor slot into the shulker box
#
#@internal


#   Clear the contents of the `armor` NBT path
data modify storage ioi-pi:temp armor set value []


#   Append the item from the player's head armor slot into the `armor` NBT path
data modify storage ioi-pi:temp armor append from entity @s Inventory[{Slot: 103b}]


#   Set the slot value of the element to `0b` to indicate that the element will be placed at the very first slot of the shulker box
data modify storage ioi-pi:temp armor[0].Slot set value 0b


#   Set the contents of the shulker box as the contents of the `armor` NBT path
data modify block -30000000 0 1602 Items set from storage ioi-pi:temp armor
