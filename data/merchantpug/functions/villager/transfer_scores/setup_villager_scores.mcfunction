#   Setup scoreboards
scoreboard objectives add markerTime dummy

tag @s add merchant.villager_paired

# Summon marker
execute at @s run function merchantpug:villager/villager_marker/summon_pair
execute at @s run function merchantpug:villager/villager_marker/check_pair_as_villager

#   Set the ID of current villager
scoreboard players operation #current merchantVillagerId = @s merchantVillagerId

#   Check if any marker entities that has the `merchant.villager_paired` tag has the same score as the current entity you're executing as
execute as @e[type = minecraft:marker, tag = merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId store result score @s markerTime run schedule function merchantpug:villager/transfer_scores/transfer_scores_to_villager 2t