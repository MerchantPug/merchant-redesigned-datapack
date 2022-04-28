#> ioi-pi:impl/selected_item/get/hotbar/modify
#
#   > Modify the `hotbar` section of the `ioi-pi:temp` storage
#
#@within function ioi-pi:impl/selected_item/get/hotbar


data modify storage ioi-pi:temp temp.items set from block -30000000 0 1602 Items

function ioi-pi:impl/selected_item/modify


#   Apply the loaded hotbar section
data modify block -30000000 0 1602 Items set from storage ioi-pi:temp temp.items

function ioi-pi:impl/modify_inventory/apply/hotbar


#   Do some clean up before calling the `ioi-pi:impl/selected_item/after_modifying` function
function ioi-pi:impl/selected_item/clean_up

function ioi-pi:impl/selected_item/after_modifying
