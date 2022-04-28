#> ioi-pi:impl/selected_item/after_modifying
#
#@within function ioi-pi:impl/selected_item/get/**


#   Set the score of the `on_modify` score holder to 0 and the score of the `after_modifying` score holder to 1 to determine that the current phase is 'after_modifying'
scoreboard players set on_modify ioi-pi 0

scoreboard players set after_modifying ioi-pi 1


#   Call the `#ioi-pi:api/selected_item/after_modifying` function tag
function #ioi-pi:api/selected_item/after_modifying
