#> ioi-pi:impl/modify_inventory/setup/mainhand
#
#   > Prepare the item from the player's mainhand slot into the shulker box
#
#@internal


function ioi-pi:impl/clear_shulker_box

data modify block -30000000 0 1602 Items append from entity @s SelectedItem
