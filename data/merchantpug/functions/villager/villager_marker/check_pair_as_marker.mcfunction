#  Id System

scoreboard objectives add merchantVillagerId dummy
scoreboard objectives add merchantMarkerDespawnTimer dummy

#  Check if any marker entities that has the `merchant.villager_paired` tag has the same score as the current entity you're executing as
execute as @e[type=#merchantpug:villagers, tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId run scoreboard players add #matching merchantVillagerId 1

#  Check if there aren't any marker entities that matches the ID. If so, summon a marker entity that will have the same ID as the current entity you're executing as
execute unless score #matching merchantVillagerId matches 1.. run scoreboard players add @s merchantMarkerDespawnTimer 1
execute unless score #matching merchantVillagerId matches 1.. if score @s merchantMarkerDespawnTimer matches 20.. run kill @s

#  Do some clean up
scoreboard players reset #matching merchantVillagerId