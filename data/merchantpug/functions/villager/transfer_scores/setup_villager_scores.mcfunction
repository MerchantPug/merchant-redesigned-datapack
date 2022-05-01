#   Setup scoreboards
scoreboard objectives add markerTime dummy

tag @s add merchant.villager_paired

#  Id System
scoreboard objectives add merchantVillagerId dummy

scoreboard players add @s merchantVillagerId 0

execute as @s run scoreboard players add #max_id merchantVillagerId 1
execute as @s run scoreboard players operation @s merchantVillagerId = #max_id merchantVillagerId

# Summon marker
execute at @s run function merchantpug:villager/villager_marker/summon_pair

#   Set the ID of current villager
execute at @s run scoreboard players operation #current merchantVillagerId = @s merchantVillagerId

#   Check if any marker entities that has the `merchant.villager_paired` tag has the same score as the current entity you're executing as
execute as @e[type = minecraft:marker, tag = merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId store result score @s markerTime run schedule function merchantpug:villager/transfer_scores/transfer_scores_to_villager 2t