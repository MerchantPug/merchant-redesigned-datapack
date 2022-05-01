#> ioi-pi:impl/selected_item/modify/current_element
#
#   > Copy the current element to the `item` NBT path of the `ioi-put:output` storage, call the `#ioi-pi:api/selected_item/modify` function tag then copy the element from the `item` NBT path to replace the current element
#
#@within function ioi-pi:impl/selected_item/modify/loop


data modify storage ioi-pi:output item set from storage ioi-pi:output items.1[-1]

execute unless score #impl.selected_item.inaccessible ioi-pi = #impl.selected_item.inaccessible ioi-pi as @a[tag = ioi-pi.player] run function ioi-pi:impl/selected_item/on_modify

data modify storage ioi-pi:output items.1[-1] set from storage ioi-pi:output item
