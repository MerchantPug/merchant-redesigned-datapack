#   Store Xp so it can check for it before storing uses of trades
execute as @e[type=villager] store result score @s merchantTraderXp run data get entity @s Xp

execute as @e[type=villager] unless data entity @s Brain.memories."minecraft:job_site".value.pos unless score @s merchantRandomisedTradeId matches 0 if score @s merchantTraderXp matches 0 run scoreboard players reset @s merchantRandomisedTradeId

execute as @e[type=villager,nbt={Xp:0,Tags:["merchant.villager_modified"]}] unless data entity @s Brain.memories."minecraft:job_site".value.pos if score @s merchantTraderXp matches 0 run function merchantpug:villager/remove_unique_trades