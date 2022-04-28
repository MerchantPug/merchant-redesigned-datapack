#> ioi-pi:impl/selected_item/get/hotbar
#
#@within function ioi-pi:impl/selected_item/get


#   Do some clean up before processing
function ioi-pi:impl/selected_item/clean_up


#   Prepare the hotbar section and process it
function ioi-pi:impl/modify_inventory/load/hotbar

execute if data storage ioi-pi:temp hotbar[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/get/hotbar/modify
