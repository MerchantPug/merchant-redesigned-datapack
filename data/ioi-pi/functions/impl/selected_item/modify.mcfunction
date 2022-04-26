#> ioi-pi:impl/selected_item/modify
#
#   > Modify the items from the `temp.items` NBT path of the `ioi-pi:temp` storage
#
#@within function ioi-pi:impl/selected_item/get/**


#   Copy the elements from the `temp.items` NBT path of the `ioi-pi:temp` storage to the `items.1` NBT path of the `ioi-pi:output` storage
data modify storage ioi-pi:output items.1 set from storage ioi-pi:temp temp.items


#   Count how many elements are in the `items.1` list and iterate through it if it's not empty
execute store result score #impl.selected_item.elements ioi-pi if data storage ioi-pi:output items.1[]

execute if score #impl.selected_item.elements ioi-pi matches 1.. run function ioi-pi:impl/selected_item/modify/loop


#   Set the contents of the `temp.items` NBT path of the `ioi-pi:temp` storage as the contents of the `items.2` NBT path of the `ioi-pi:output` storage
data modify storage ioi-pi:temp temp.items set from storage ioi-pi:output items.2


#   Do some clean up
data remove storage ioi-pi:output items
