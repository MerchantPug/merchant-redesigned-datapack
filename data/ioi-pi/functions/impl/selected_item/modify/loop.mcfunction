#> ioi-pi:impl/selected_item/modify/loop
#
#   > Iterate through the `items.1` NBT path of the `ioi-pi:output` storage
#
#@within
#   function ioi-pi:impl/selected_item/modify
#   function ioi-pi:impl/selected_item/modify/loop


#   Modify the current element if it's selected
execute if data storage ioi-pi:output items.1[-1].tag{ioi-pi: {selected: 1b}} unless data storage ioi-pi:output items.1[-1].tag{ioi-pi: {extra: 1b}} run function ioi-pi:impl/selected_item/modify/current_element


#   Remove the `ioi-pi` NBT compound from the current element
data remove storage ioi-pi:output items.1[-1].tag.ioi-pi


#   Count how many NBTs the current element has. If there's none, remove the `tag` NBT
execute store result score #impl.selected_item.tags ioi-pi run data get storage ioi-pi:output items.1[-1].tag

execute unless score #impl.selected_item.tags ioi-pi matches 1.. run data remove storage ioi-pi:output items.1[-1].tag


#   Move the current element to the `temp.output` NBT path
data modify storage ioi-pi:output items.2 prepend from storage ioi-pi:output items.1[-1]

data remove storage ioi-pi:output items.1[-1]


#   Count how many elements remain in the list. If there are still elements in the list, recall this function
execute store result score #impl.selected_item.elements ioi-pi if data storage ioi-pi:output items.1[]

execute if score #impl.selected_item.elements ioi-pi matches 1.. run function ioi-pi:impl/selected_item/modify/loop
