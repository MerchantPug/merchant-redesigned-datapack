#   Setup scoreboard objectives
scoreboard objectives add shearedTicks dummy
scoreboard objectives add particleTicks dummy
scoreboard players set #tickRate particleTicks 2

#   Tick scoreboard objectives for entities tagged as 'merchant.sheared'
execute as @e[tag = merchant.sheared] run scoreboard players add @s shearedTicks 1

#   Setup particle ticks
execute as @e[tag = merchant.sheared] run scoreboard players operation @s particleTicks = @s shearedTicks
execute as @e[tag = merchant.sheared] run scoreboard players operation @s particleTicks %= #tickRate particleTicks

execute as @e[tag = merchant.sheared] at @s anchored eyes if score @s particleTicks matches 0 run particle minecraft:dust_color_transition 1.0 1.0 0.0 1.0 1.0 0.651 0.0 ~ ~ ~ 0.5 0.5 0.5 2 2

#   Clear the entity's sheared status after 1 minute 30 seconds
execute as @e[tag = merchant.sheared] if score @s shearedTicks matches 1800.. run tag @s add merchant.reset_sheared
execute as @e[tag = merchant.sheared] if score @s shearedTicks matches 1800.. run tag @s remove merchant.sheared
execute as @e[tag = merchant.reset_sheared] if score @s shearedTicks matches 1800.. run scoreboard players reset @s shearedTicks
execute as @e[tag = merchant.reset_sheared] if score @s shearedTicks matches 1800.. run scoreboard players reset @s particleTicks
execute as @e[tag = merchant.reset_sheared] if score @s shearedTicks matches 1800.. run tag @s remove merchant.reset_sheared