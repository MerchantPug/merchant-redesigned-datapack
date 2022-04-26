#> ioi-pi:impl/modify_inventory/setup/whole_inventory
#
#   > Prepare the entire inventory of the player and split it up multiple sections of it to their designated NBT paths
#
#@internal


#   Clear the contents of all the sections
data modify storage ioi-pi:temp inventory set value []

data modify storage ioi-pi:temp hotbar set value []

data modify storage ioi-pi:temp armor set value []

data modify storage ioi-pi:temp offhand set value []


#   Copy the entire inventory data of the player and paste it into the `whole_inventory` NBT path
data modify storage ioi-pi:temp whole_inventory set from entity @s Inventory


#   Sort the copied entire inventory of the player into multiple sections
function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/sort_slots
