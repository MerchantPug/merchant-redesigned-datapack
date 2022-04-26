#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/found_armor
#
#   > Move the current element to the `armor` NBT path of the `ioi-pi:temp` storage
#
#@within function *:**/**/**/**/**/check_armor


#   Remove 100 from the current slot value to fit it inside the shulker box
execute store result storage phi.modifyinv:temp whole_inventory[-1].Slot byte 1 run scoreboard players remove $phi.modifyinv.slot phitemp 100

execute store result storage ioi-pi:temp whole_inventory[-1].Slot byte 1 run scoreboard players remove $impl.modify_inventory.slot ioi-pi 100


#   Move the element to the `armor` NBT path
data modify storage ioi-pi:temp armor append from storage ioi-pi:temp whole_inventory[-1]

data remove storage ioi-pi:temp whole_inventory[-1]


#   Get the slot value of the next element and repeat the process
execute store result score $impl.modify_inventory.slot ioi-pi run data get storage ioi-pi:temp whole_inventory[-1].Slot

scoreboard players remove $impl.modify_inventory.elements ioi-pi 1


function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_armor
