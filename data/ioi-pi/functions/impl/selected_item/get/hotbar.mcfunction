#> ioi-pi:impl/selected_item/get/hotbar
#
#@within function ioi-pi:impl/selected_item/get


#   Do some clean up before processing
function ioi-pi:impl/clear_shulker_box

data remove storage ioi-pi:temp temp.items


#   Load the hotbar section
function ioi-pi:impl/modify_inventory/load/hotbar


#   Call the `#ioi-pi:api/modify_selected_item` function tag
data modify storage ioi-pi:temp temp.items set from block -30000000 0 1602 Items

execute if data storage ioi-pi:temp temp.items[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/modify

data modify block -30000000 0 1602 Items set from storage ioi-pi:temp temp.items


#   Apply the loaded hotbar section
function ioi-pi:impl/modify_inventory/apply/hotbar
