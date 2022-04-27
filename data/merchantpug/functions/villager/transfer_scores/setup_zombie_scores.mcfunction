#  Get the score of the current entity you're executing as
execute as @e[type=minecraft:marker, tag=merchant.villager_paired, sort=nearest, limit=1] run scoreboard players operation #current merchantVillagerId = @s merchantVillagerId
execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantRandomisedTradeId = #current merchantRandomisedTradeId run scoreboard players operation #current merchantVillagerId = @s merchantVillagerId
tellraw @a {"score":{"name":"#current","objective":"merchantRandomisedTradeId"}}
tellraw @a {"score":{"name":"#current","objective":"merchantVillagerId"}}

#  Check if any marker entities that has the `merchant.villager_paired` tag has the same score as the current entity you're executing as
execute as @e[type = minecraft:marker, tag = merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId run schedule function merchantpug:villager/transfer_scores/transfer_scores_to_zombie 1t