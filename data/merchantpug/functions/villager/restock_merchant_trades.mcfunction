#   Setup scoreboards
scoreboard objectives add merchantHasRestocked dummy
scoreboard objectives add lastRestockTime dummy 
scoreboard objectives add lastRestockTimeCache dummy 

scoreboard players add #zero merchantTraderTradeUses 0
execute as @e[type=villager] run scoreboard players add @s lastRestockTimeCache 0

#   Get the last restock time each tick
execute as @e[type=villager] store result score @s lastRestockTime run data get entity @s LastRestock

#   If the cached restock is not the same as the last restock time, the villager has restocked, update the 'merchantHasRestocked' score
execute as @e[type=villager] unless score @s lastRestockTime = @s lastRestockTimeCache run scoreboard players set @s merchantHasRestocked 1

#   Set trade amount to 0 if the villager has restocked
execute as @e[type=villager] if score @s merchantHasRestocked matches 1 if score @s merchantTraderTradeUses matches 1.. store result score @s merchantTraderTradeUses run scoreboard players get #zero merchantTraderTradeUses

#   Set the cached restock time 
execute as @e[type=villager] if score @s merchantHasRestocked matches 1 run scoreboard players operation @s lastRestockTimeCache = @s lastRestockTime

#   Cleanup
execute as @e[type=villager] run scoreboard players reset @s merchantHasRestocked