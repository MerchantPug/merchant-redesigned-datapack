#  Get the score of the current entity you're executing as
scoreboard players operation #currentConversion merchantVillagerId = @s merchantVillagerId

#  Check if any marker entities that has the `merchant.villager_paired` tag has the same score as the current entity you're executing as
execute as @e[type = minecraft:marker, tag = merchant.villager_paired] if score @s merchantVillagerId = #currentConversion merchantVillagerId at @s run schedule function merchantpug:villager/transfer_scores/transfer_scores_to_villager 2t