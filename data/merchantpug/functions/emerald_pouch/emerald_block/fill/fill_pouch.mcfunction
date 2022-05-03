#   Add an example scoreboard objective
scoreboard objectives add emeralds dummy


#   Count how many emeralds are currently in the Emerald Pouch
execute store result score #temp emeralds run data get storage ioi-pi:output item.tag.merchant.emeralds


#   If the score of the `#temp` score holder is not the max (specified in the config) or greater, put the emeralds.
execute unless score #temp emeralds >= emeraldPouchMax merchantConfig run function merchantpug:emerald_pouch/emerald_block/fill/on_modify/put_emeralds

#   Do some clean up
scoreboard players reset #overflow emeralds