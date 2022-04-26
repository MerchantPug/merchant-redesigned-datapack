#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/found_offhand
#
#   > Move the current element to the `offhand` NBT path of the `ioi-pi:temp` storage
#
#@within function *:**/**/**/**/**/check_offhand


#   Add 106 to the current slot value to make it fit to the shulker box
execute store result storage ioi-pi:temp whole_inventory[-1].Slot byte 1 run scoreboard players add $impl.modify_inventory.slot ioi-pi 106


#   Move the element to the `offhand` NBT path
data modify storage ioi-pi:temp offhand append from storage ioi-pi:temp whole_inventory[-1]

data remove storage ioi-pi:temp whole_inventory[-1]


#   Get the slot value of the next element
execute store result score $impl.modify_inventory.slot ioi-pi run data get storage ioi-pi:temp whole_inventory[-1].Slot

scoreboard players remove $impl.modify_inventory.elements ioi-pi 1
