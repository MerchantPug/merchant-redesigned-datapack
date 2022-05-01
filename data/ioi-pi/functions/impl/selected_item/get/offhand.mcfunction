#> ioi-pi:impl/selected_item/get/offhand
#
#   > Get the selected item from the offhand slot of the player
#
#@within function ioi-pi:impl/selected_item/get


#   Do some clean up before processing
function ioi-pi:impl/selected_item/clean_up


#   Prepare the offhand section and process it
function ioi-pi:impl/modify_inventory/load/offhand

execute if data storage ioi-pi:temp offhand[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/get/offhand/modify
