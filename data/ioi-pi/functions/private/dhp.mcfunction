#> ioi-pi:private/dhp
#
#   > A placeholder function for declaring stuff
#
#   - Mostly for the Datapack Helper Plus extension by spgoding in Visual Studio Code
#
#@private


#>  Stores the current slot value
#@within ioi-pi:impl/modify_inventory/setup/**
#declare score_holder $impl.modify_inventory.slot


#>  Stores how many elements are in the processing list
#@within ioi-pi:impl/modify_inventory/setup/**
#declare score_holder $impl.modify_inventory.elements


#>  Determines if the function is called by the advancement
#@within ioi-ipi:impl/selected_item/**
#declare score_holder #impl.selected_item.inaccessible


#>  Determines if the library is currently modifying the selected item(s)
#@public
#declare score_holder on_modify


#>  Determines if the library has finished modifying the selected item(s)
#@public
#declare score_holder after_modifying


#>  A storage for processing the inventory/items of an entity/block entity
#@internal
#declare storage ioi-pi:temp


#>  A storage for processing the selected item
#@public
#declare storage ioi-pi:output


#>  A special shulker box used for indirectly modifying the player/entity's inventory
#@public
#alias vector "MinecraftPhi's yellow shulker box" -30000000 0 1602
