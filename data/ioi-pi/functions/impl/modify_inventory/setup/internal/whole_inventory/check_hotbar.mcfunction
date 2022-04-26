#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_hotbar
#
#   > Check if the current slot value matches the value for the hotbar slots
#
#@within function *:**/**/**/**/**


execute if score $impl.modify_inventory.elements ioi-pi matches 1.. if score $impl.modify_inventory.slot ioi-pi matches 0..8 run function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/found_hotbar
