#  Store the current gametime
execute store result score #current_gametime markerTime run time query gametime

execute as @e[type=marker,tag=merchant.villager_paired] if score @s markerTime = #current_gametime markerTime run scoreboard players operation #current merchantVillagerId = @s merchantVillagerId
execute as @e[type=marker,tag=merchant.villager_paired] if score @s markerTime = #current_gametime markerTime run scoreboard players operation #current merchantRandomisedTradeId = @s merchantRandomisedTradeId

execute as @e[type=marker,tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId at @s as @e[type=villager,sort=nearest,limit=1] run scoreboard players operation @s merchantVillagerId = #current merchantVillagerId

execute as @e[type=marker,tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId run scoreboard players operation #current merchantRandomisedTradeId = @s merchantRandomisedTradeId

execute as @e[type=minecraft:villager] if score @s merchantVillagerId = #current merchantVillagerId run scoreboard players operation @s merchantRandomisedTradeId = #current merchantRandomisedTradeId

execute as @e[type=marker,tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId run kill @s