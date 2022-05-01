#> ioi-pi:impl/selected_item/on_modify
#
#   > Call this function to modify the selected item(s)
#
#@within function ioi-pi:impl/selected_item/modify/current_element


#   Set the score of the `on_modify` score holder to determine that the current phase is 'on modify'
scoreboard players set on_modify ioi-pi 1

scoreboard players set after_modifying ioi-pi 0


#   Call the `#ioi-pi:selected_item/on_modify` function tag
function #ioi-pi:api/selected_item/on_modify


#   Prepend the current element to the `modified_items` NBT path of the `ioi-pi:output` storage
data modify storage ioi-pi:output modified_items prepend from storage ioi-pi:output item
