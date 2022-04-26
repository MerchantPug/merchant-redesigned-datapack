#> ioi-pi:impl/selected_item/get/armor
#
#@within function ioi-pi:impl/selected_item/get


#   Do some clean up before processing
function ioi-pi:impl/clear_shulker_box

data remove storage ioi-pi:temp temp.items


#   Load the armor section
function ioi-pi:impl/modify_inventory/load/armor


#   Call the `#ioi-pi:api/modify_selected_item` function tag
data modify storage ioi-pi:temp temp.items set from block -30000000 0 1602 Items

execute if data storage ioi-pi:temp temp.items[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/modify

data modify block -30000000 0 1602 Items set from storage ioi-pi:temp temp.items


#   Apply the loaded armor section
function ioi-pi:impl/modify_inventory/apply/armor
