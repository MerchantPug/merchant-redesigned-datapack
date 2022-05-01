#> ioi-pi:impl/selected_item/clean_up
#
#   > Clear the shulker box located in `-3000000 0 1602` and the `temp.items` NBT path of the `ioi-pi:temp` storage
#
#@within function ioi-pi:impl/selected_item/get/**


function ioi-pi:impl/clear_shulker_box

data remove storage ioi-pi:temp temp.items
