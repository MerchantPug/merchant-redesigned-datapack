#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/found_inventory
#
#   > Move the current element to the `inventory` NBT path of the `ioi-pi:temp` storage
#
#@within *:**/**/**/**/**/check_inventory


#   Remove 9 from the current slot value to fit it inside the shulker box
execute store result storage ioi-pi:temp whole_inventory[-1].Slot byte 1 run scoreboard players remove $impl.modify_inventory.slot ioi-pi 9


#   Move the element to the `inventory` NBT path
data modify storage ioi-pi:temp inventory append from storage ioi-pi:temp whole_inventory[-1]

data remove storage ioi-pi:temp whole_inventory[-1]


#   Get the slot value of the next element and repeat the process
execute store result score $impl.modify_inventory.slot ioi-pi run data get storage ioi-pi:temp whole_inventory[-1].Slot

scoreboard players remove $impl.modify_inventory.elements ioi-pi 1


function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_inventory
