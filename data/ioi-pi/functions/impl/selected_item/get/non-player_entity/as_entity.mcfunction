#> ioi-pi:impl/selected_item/get/non-player_entity/as_entity
#
#   > Execute as the entity that can have an inventory
#
#@within function ioi-pi:impl/selected_item/get/non-player_entity


#   Get the contents of the entity's inventory and process it
data modify storage ioi-pi:temp temp.items set from entity @s Items

execute if data storage ioi-pi:temp temp.items[{tag: {ioi-pi: {selected: 1b}}}] run function ioi-pi:impl/selected_item/get/non-player_entity/modify


#   Do some clean up afterwards
function ioi-pi:impl/selected_item/clean_up
