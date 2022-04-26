#> ioi-pi:load
#
#@within tag/function minecraft:load


#   Prepare the MinecraftPhi chunk
function ioi-pi:private/forceload_chunk


#   Add a scoreboard objective
scoreboard objectives add ioi-pi dummy


#   Display a load/reload message
execute unless score #loaded ioi-pi = #loaded ioi-pi run tellraw @a[tag = ioi-pi.debugger] {"text": "[+ Loaded \"Item on Item Programming Interface\" by eggohito]", "color": "green"}

execute if score #loaded ioi-pi = #loaded ioi-pi run tellraw @a[tag = ioi-pi.debugger] {"text": "[= Reloaded \"Item on Item Programming Interface\" by eggohito]", "color": "gold"}

scoreboard players set #loaded ioi-pi 1


#   Re-initialize the tick function
schedule function ioi-pi:tick 1t replace
