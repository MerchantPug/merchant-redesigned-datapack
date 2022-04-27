#   Decrement the addedEmeralds score
execute if score #temp emeralds < emeraldPouchMax config run scoreboard players remove #temp addedEmeralds 1

#   Add to emeralds score
execute if score #temp emeralds < emeraldPouchMax config run scoreboard players add #temp emeralds 1

# Add score for if the pouch is full
scoreboard objectives add isFull dummy
execute unless score #temp emeralds < emeraldPouchMax config run scoreboard players set #temp isFull 1

#   Add emeralds to Yellow Shulker Storage
execute if score #temp isFull matches 1 run data modify block -30000000 0 1602 Items set value [{Slot:0b, id:"minecraft:emerald", Count:1b}]
execute if score #temp isFull matches 1 store result block -30000000 0 1602 Items[{Slot:0b}].Count byte 1 run scoreboard players get #temp addedEmeralds

#   Give Yellow Shulker Storage to player
execute if score #temp isFull matches 1 run loot spawn ~ ~ ~ mine -30000000 0 1602 air{drop_contents:1b}

#  Cleanup
scoreboard players reset #temp isFull

#  Recurse this function only if the score of the `addedEmeralds` score holder is 1 or greater
execute if score #temp addedEmeralds matches 1.. if score #temp emeralds < emeraldPouchMax config run function merchantpug:emerald_pouch/add_to_emeralds