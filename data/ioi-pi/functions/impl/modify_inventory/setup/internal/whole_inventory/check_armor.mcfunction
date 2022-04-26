#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_armor
#
#   > Check if the current slot value matches the value for the armor slots
#
#@within function *:**/**/**/**/**


execute if score $impl.modify_inventory.slot ioi-pi matches 100..103 run function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/found_armor
