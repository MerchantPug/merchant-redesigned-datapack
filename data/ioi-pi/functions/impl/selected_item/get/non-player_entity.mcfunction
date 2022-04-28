#> ioi-pi:impl/selected_item/get/non-player_entity
#
#@within function ioi-pi:impl/selected_item/get


execute as @e[type = #ioi-pi:entities_with_inventories, distance = ..64] run function ioi-pi:impl/selected_item/get/non-player_entity/as_entity
