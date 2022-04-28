#   Count how many Ender Eyes are currently on the cursor
execute store result score #extra_emeralds emeralds run clear @s minecraft:emerald{ioi-pi: {selected: 1b, extra: 1b}} 0


#   If the score of the `#extra_emeralds` score holder is not less than the score of the `#set_extra_emeralds_to` score holder, remove 1 of the Emeralds and recall this function
execute unless score #extra_emeralds emeralds <= #set_extra_emeralds_to emeralds run clear @s minecraft:emerald{ioi-pi: {selected: 1b, extra: 1b}} 1

execute unless score #extra_emeralds emeralds <= #set_extra_emeralds_to emeralds run function merchantpug:emerald_pouch/fill/on_modify/set_extra_emeralds