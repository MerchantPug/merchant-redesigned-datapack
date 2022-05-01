#   Setup scoreboards
scoreboard objectives add markerTime dummy

#   Set the ID of current villager
execute at @s as @e[type=marker,sort=nearest,limit=1] run scoreboard players operation #current merchantVillagerId = @s merchantVillagerId

#   Check if any marker entities that has the `merchant.villager_paired` tag has the same score as the current entity you're executing as
execute as @e[type = minecraft:marker, tag = merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId store result score @s markerTime run schedule function merchantpug:villager/transfer_scores/transfer_scores_to_zombie 1t