#> ioi-pi:impl/selected_item/get/container
#
#@within function ioi-pi:impl/selected_item/get


execute at @e[type = minecraft:marker, tag = ioi-pi.marker, distance = ..64] run function ioi-pi:impl/selected_item/get/container/process
