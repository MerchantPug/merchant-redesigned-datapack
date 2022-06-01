#> ioi-pi:impl/selected_item/get/offhand/modify
#
#   > Modify the `offhand` section of the `ioi-pi:temp` storage
#
#@within function ioi-pi:impl/selected_item/get/offhand


data modify storage ioi-pi:temp temp.items set from block -30000000 0 1602 Items

function ioi-pi:impl/selected_item/modify


#   Apply the loaded offhand section
data modify block -30000000 0 1602 Items set from storage ioi-pi:temp temp.items

function ioi-pi:impl/modify_inventory/apply/offhand


#   Do some clean up before calling the `ioi-pi:impl/selected_item/after_modifying` function
function ioi-pi:impl/selected_item/clean_up

execute unless score #impl.selected_item.inaccessible ioi-pi = #impl.selected_item.inaccessible ioi-pi run function ioi-pi:impl/selected_item/after_modifying
