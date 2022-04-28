#> ioi-pi:impl/selected_item/get/inventory
#
#@within function ioi-pi:impl/selected_item/get


#   Do some clean up before processing
function ioi-pi:impl/selected_item/clean_up


#   Prepare the inventory section and process it
function ioi-pi:impl/modify_inventory/load/inventory

execute if data storage ioi-pi:temp inventory[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/get/inventory/modify
