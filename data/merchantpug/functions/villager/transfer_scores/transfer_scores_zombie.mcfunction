scoreboard players operation #currentConversion merchantRandomisedTradeId = @s merchantRandomisedTradeId

execute at @s as @e[type=zombie_villager,sort=nearest,limit=1] run scoreboard players operation @s merchantRandomisedTradeId = #currentConversion merchantRandomisedTradeId

tellraw @a {"score":{"name":"#temp","objective":"merchantRandomisedTradeId"}}
execute as @e[type=marker,tag=merchant.villager_score] at @s as @e[type=zombie_villager,sort=nearest,limit=1] run tellraw @a {"score":{"name":"@s","objective":"merchantRandomisedTradeId"}}

execute at @s as @e[type=zombie_villager,sort=nearest,limit=1] run function merchantpug:villager/remove_unique_trades

kill @s