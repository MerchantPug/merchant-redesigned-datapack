#  Store the current gametime
execute store result score #current_gametime markerTime run time query gametime

#   Get the score of the current entity you're executing as
execute as @e[type=marker,tag=merchant.villager_paired] if score @s markerTime = #current_gametime markerTime run scoreboard players operation #current merchantVillagerId = @s merchantVillagerId
execute as @e[type=marker,tag=merchant.villager_paired] if score @s markerTime = #current_gametime markerTime run scoreboard players operation #current merchantRandomisedTradeId = @s merchantRandomisedTradeId

execute as @e[type=marker,tag=merchant.villager_paired] if score @s markerTime = #current_gametime markerTime at @s as @e[type=zombie_villager,sort=nearest,limit=1] run scoreboard players operation @s merchantVillagerId = #current merchantVillagerId

execute as @e[type=minecraft:zombie_villager] if score @s merchantVillagerId = #current merchantVillagerId run scoreboard players operation @s merchantRandomisedTradeId = #current merchantRandomisedTradeId

execute as @e[type=minecraft:zombie_villager] if score @s merchantVillagerId = #current merchantVillagerId run tag @s add merchant.dont_reset_trade

execute as @e[type=minecraft:zombie_villager] if score @s merchantVillagerId = #current merchantVillagerId run function merchantpug:villager/remove_unique_trades

execute as @e[type=marker,tag=merchant.villager_paired] if score @s markerTime = #current_gametime markerTime run kill @s

scoreboard players reset #current merchantVillagerId
scoreboard players reset #current merchantRandomisedTradeId