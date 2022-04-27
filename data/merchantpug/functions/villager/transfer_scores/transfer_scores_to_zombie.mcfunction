execute at @s as @e[type=zombie_villager,sort=nearest,limit=1] run scoreboard players operation @s merchantVillagerId = #current merchantVillagerId
execute as @e[type=minecraft:zombie_villager] if score @s merchantVillagerId = #current merchantVillagerId run scoreboard players operation @s merchantRandomisedTradeId = #current merchantRandomisedTradeId
tellraw @a {"score":{"name":"#current","objective":"merchantRandomisedTradeId"}}
execute as @e[type=minecraft:zombie_villager] if score @s merchantVillagerId = #current merchantVillagerId run tellraw @a {"score":{"name":"@s","objective":"merchantRandomisedTradeId"}}

execute as @e[type=minecraft:zombie_villager] if score @s merchantVillagerId = #current merchantVillagerId run function merchantpug:villager/remove_unique_trades

kill @s

scoreboard players reset #current merchantVillagerId
scoreboard players reset #current merchantRandomisedTradeId