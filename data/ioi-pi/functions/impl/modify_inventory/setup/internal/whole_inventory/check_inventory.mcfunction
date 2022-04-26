#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_inventory
#
#   > Check if the current slot value matches the value for the inventory slots
#
#@within function *:**/**/**/**/**


execute if score $impl.modify_inventory.slot ioi-pi matches 9..35 run function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/found_inventory
