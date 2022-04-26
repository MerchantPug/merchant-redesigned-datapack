#> ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/sort_slots
#
#   > Separate the elements to their own NBT paths and sort their `Slot` values to make it fit into a single shulker box
#
#@internal


#   Get the `Slot` value of the last element in the list
execute store result score $impl.modify_inventory.slot ioi-pi run data get storage ioi-pi:temp whole_inventory[-1].Slot

execute store result score $impl.modify_inventory.elements ioi-pi if data storage ioi-pi:temp whole_inventory[]


#   Afterwards, process all the 'sections' of the inventory starting from the last element of their list for optimal processing
function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_offhand

function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_armor

function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_inventory

function ioi-pi:impl/modify_inventory/setup/internal/whole_inventory/check_hotbar
