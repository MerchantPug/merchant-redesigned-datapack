#> ioi-pi:impl/selected_item/get/container
#
#   > Get the selected item from nearby containers
#
#@within function ioi-pi:impl/selected_item/get


execute at @e[type = minecraft:marker, tag = ioi-pi.marker, distance = ..64] run function ioi-pi:impl/selected_item/get/container/as_marker
