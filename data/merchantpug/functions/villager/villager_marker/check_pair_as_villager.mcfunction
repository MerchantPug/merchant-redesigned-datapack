#  Id System
scoreboard objectives add merchantVillagerId dummy
scoreboard objectives add zombiesNearbyTicks dummy

scoreboard players add @e[type=#merchantpug:villagers,tag=merchant.villager_paired] merchantVillagerId 0

execute as @e[type=#merchantpug:villagers,tag=merchant.villager_paired,scores={merchantVillagerId=0},limit=1] run scoreboard players add #max_id merchantVillagerId 1
execute as @e[type=#merchantpug:villagers,tag=merchant.villager_paired,scores={merchantVillagerId=0},limit=1] run scoreboard players operation @s merchantVillagerId = #max_id merchantVillagerId

#  Get the score of the current entity you're executing as
scoreboard players operation #current merchantVillagerId = @s merchantVillagerId
scoreboard players operation #current merchantTraderXp = @s merchantTraderXp
scoreboard players operation #current merchantRandomisedTradeId = @s merchantRandomisedTradeId

#  Check if any marker entities that has the `merchant.villager_paired` tag has the same score as the current entity you're executing as
execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId run scoreboard players add #matching merchantVillagerId 1
execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId run scoreboard players operation @s merchantTraderXp = #current merchantTraderXp
execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId run scoreboard players operation @s merchantRandomisedTradeId = #current merchantRandomisedTradeId

#  Teleport marker to entity with the same ID every tick.
execute at @s as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId run tp ~ ~ ~

#  Check if there aren't any marker entities that matches the ID. If so, summon a marker entity that will have the same ID as the current entity you're executing as
execute unless score #matching merchantVillagerId matches 1.. run function merchantpug:villager/villager_marker/summon_pair

#  If the villager is no longer actively being chased by a zombie, remove the villager_paired tag from it
execute as @s[type=villager,tag=merchant.villager_paired] run scoreboard players add @s zombiesNearbyTicks 1
execute as @s[type=villager,tag=merchant.villager_paired] at @s if entity @e[type=#merchantpug:zombies,distance=..8] run scoreboard players set @s zombiesNearbyTicks 0
execute as @s[type=villager,tag=merchant.villager_paired] at @s if entity @e[type=player,nbt={cardinal_components:{"origins:origin":{OriginLayers:[{Origin:"toomanyorigins:undead",Layer:"origins:origin"}]}}}] run scoreboard players set @s zombiesNearbyTicks 0

execute as @s[type=villager,tag=merchant.villager_paired] at @s if score @s zombiesNearbyTicks matches 2.. run tag @s remove merchant.villager_paired

#  Do some clean up
scoreboard players reset #matching merchantVillagerId