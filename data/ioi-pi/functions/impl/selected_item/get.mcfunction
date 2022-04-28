#> ioi-pi:impl/selected_item/get
#
#@within
#   advancement ioi-pi:impl/selected_item/get
#   tag/function ioi-pi:api/selected_item/get


#   Set the score of the `#impl.adv.call` score holder to 1
execute if entity @s[advancements = {ioi-pi:impl/selected_item/get = true}] run scoreboard players set #impl.adv.call ioi-pi 1


#   Add a tag to refer to the player in some context where the executor has to be changed
tag @s add ioi-pi.player


#   Process the inventory and nearby blocks/entities that have inventories
function ioi-pi:impl/modify_inventory/setup/whole_inventory

function ioi-pi:impl/selected_item/get/armor

function ioi-pi:impl/selected_item/get/hotbar

function ioi-pi:impl/selected_item/get/inventory

function ioi-pi:impl/selected_item/get/offhand

function ioi-pi:impl/selected_item/get/container

function ioi-pi:impl/selected_item/get/non-player_entity


#   Do some clean up
tag @s remove ioi-pi.player


scoreboard players reset on_modify ioi-pi

scoreboard players reset #impl.adv.call ioi-pi

scoreboard players reset after_modifying ioi-pi


data remove storage ioi-pi:temp temp

data remove storage ioi-pi:output modified_items


execute if entity @s[advancements = {ioi-pi:impl/selected_item/get = true}] run advancement revoke @s only ioi-pi:impl/selected_item/get
