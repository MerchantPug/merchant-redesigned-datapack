#  Id System

scoreboard objectives add merchantVillagerId dummy

scoreboard players add @e[type=#merchantpug:villagers] merchantVillagerId 0

execute as @e[type=#merchantpug:villagers,scores={merchantVillagerId=0},limit=1] run scoreboard players add #max_id merchantVillagerId 1
execute as @e[type=#merchantpug:villagers,scores={merchantVillagerId=0},limit=1] run scoreboard players operation @s merchantVillagerId = #max_id merchantVillagerId

#  Get the score of the current entity you're executing as
scoreboard players operation #current merchantVillagerId = @s merchantVillagerId
scoreboard players operation #current merchantTraderXp = @s merchantTraderXp
scoreboard players operation #current merchantRandomisedTradeId = @s merchantRandomisedTradeId

#  Check if any marker entities that has the `merchant.villager_paired` tag has the same score as the current entity you're executing as
execute as @e[type = minecraft:marker, tag = merchant.villager_paired] if score @s id = #current id run scoreboard players add #matching merchantVillagerId 1
execute as @e[type = minecraft:marker, tag = merchant.villager_paired] if score @s id = #current id run scoreboard players operation @s merchantTraderXp = #current merchantTraderXp
execute as @e[type = minecraft:marker, tag = merchant.villager_paired] if score @s id = #current id run scoreboard players operation @s merchantRandomisedTradeId = #current merchantRandomisedTradeId

#  Check if there aren't any marker entities that matches the ID. If so, summon a marker entity that will have the same ID as the current entity you're executing as
execute unless score #matching merchantVillagerId matches 1.. run function merchantpug:villager/villager_marker/summon_pair

#  Do some clean up
scoreboard players reset #matching merchantVillagerId