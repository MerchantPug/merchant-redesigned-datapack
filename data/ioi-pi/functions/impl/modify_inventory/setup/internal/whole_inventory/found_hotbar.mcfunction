#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/found_hotbar
#
#   > Move the current element to the `hotbar` NBT path of the `ioi-pi:temp` storage
#
#@within *:**/**/**/**/**/check_hotbar


#   Move the element to the `hotbar` NBT path
data modify storage ioi-pi:temp hotbar append from storage ioi-pi:temp whole_inventory[-1]

data remove storage ioi-pi:temp whole_inventory[-1]


#   Get the slot value of the next element and repeat the process
execute store result score $impl.modify_inventory.slot ioi-pi run data get storage ioi-pi:temp whole_inventory[-1].Slot

scoreboard players remove $impl.modify_inventory.elements ioi-pi 1


function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_hotbar
