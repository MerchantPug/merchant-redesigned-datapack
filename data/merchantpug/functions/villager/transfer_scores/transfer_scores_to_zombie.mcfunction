execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantRandomisedTradeId = #current merchantRandomisedTradeId at @s as @e[type=zombie_villager,sort=nearest,limit=1] run scoreboard players operation @s merchantRandomisedTradeId = #current merchantRandomisedTradeId

tellraw @a {"score":{"name":"#current","objective":"merchantRandomisedTradeId"}}
execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantRandomisedTradeId = #current merchantRandomisedTradeId at @s as @e[type=zombie_villager,sort=nearest,limit=1] run tellraw @a {"score":{"name":"@s","objective":"merchantRandomisedTradeId"}}

execute as @e[type=minecraft:marker, tag=merchant.villager_paired] if score @s merchantRandomisedTradeId = #current merchantRandomisedTradeId at @s as @e[type=zombie_villager,sort=nearest,limit=1] run function merchantpug:villager/remove_unique_trades

kill @s

scoreboard players reset #current merchantRandomisedTradeId