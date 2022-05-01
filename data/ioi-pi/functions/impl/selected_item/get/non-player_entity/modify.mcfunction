#> ioi-pi:impl/selected_item/get/non-player_entity/modify
#
#   > Modify the contents of the inventory of the entity that can have an inventory
#
#@within function ioi-pi:impl/selected_item/get/non-player_entity/as_entity


function ioi-pi:impl/selected_item/modify


#   Apply the changes made with the contents of the inventory of the entity
data modify entity @s Items set from storage ioi-pi:temp temp.items


#   Do some clean up before calling the `ioi-pi:impl/selected_item/after_modifying` function
function ioi-pi:impl/selected_item/clean_up

execute unless score #impl.selected_item.inaccessible ioi-pi = #impl.selected_item.inaccessible ioi-pi as @a[tag = ioi-pi.player] run function ioi-pi:impl/selected_item/after_modifying
