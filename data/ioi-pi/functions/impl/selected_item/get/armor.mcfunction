#> ioi-pi:impl/selected_item/get/armor
#
#   > Get the selected item from the armor slots of the player
#
#@within function ioi-pi:impl/selected_item/get


#   Do some clean up before processing
function ioi-pi:impl/selected_item/clean_up


#   Prepare the armor section and process it
function ioi-pi:impl/modify_inventory/load/armor

execute if data storage ioi-pi:temp armor[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/get/armor/modify
