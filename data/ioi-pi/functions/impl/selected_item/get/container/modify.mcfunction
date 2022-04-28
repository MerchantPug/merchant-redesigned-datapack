#> ioi-pi:impl/selected_item/get/container/modify
#
#   > Modify the contents of the container for the marker entity that has the `ioi-pi.marker` tag
#
#@within function ioi-pi:impl/selected_item/get/container/as_marker


function ioi-pi:impl/selected_item/modify


#   Apply the changes made with the contents of the container
data modify block ~ ~ ~ Items set from storage ioi-pi:temp temp.items


#   Do some clean up before calling the `ioi-pi:impl/selected_item/after_modifying` function
function ioi-pi:impl/selected_item/clean_up

execute as @a[tag = ioi-pi.player] run function ioi-pi:impl/selected_item/after_modifying
