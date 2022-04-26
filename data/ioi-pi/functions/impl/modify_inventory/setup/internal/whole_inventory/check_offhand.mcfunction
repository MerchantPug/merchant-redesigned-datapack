#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_offhand
#
#   > Check if the current slot value matches the value for the offhand slot
#
#@within function *:**/**/**/**/**


execute if score $impl.modify_inventory.slot ioi-pi matches -106 run function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/found_offhand
