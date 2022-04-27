execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId at @s as @e[type=villager,sort=nearest,limit=1] run scoreboard players operation @s merchantRandomisedTradeId = #current merchantRandomisedTradeId

tellraw @a {"score":{"name":"#current","objective":"merchantRandomisedTradeId"}}
execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantVillagerId = #current merchantVillagerId at @s as @e[type=marker,tag=merchant.villager_score] at @s as @e[type=villager,sort=nearest,limit=1] run tellraw @a {"score":{"name":"@s","objective":"merchantRandomisedTradeId"}}

kill @s

scoreboard players reset #current merchantVillagerId
scoreboard players reset #current merchantRandomisedTradeId