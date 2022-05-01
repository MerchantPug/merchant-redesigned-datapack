# Setup scoreboard
scoreboard objectives add itemIsAlive dummy
scoreboard objectives add isEmeraldPouch dummy

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:knowledge_book"}},tag=!merchant.has_dropped_emeralds] store result score @s isEmeraldPouch run data get entity @s Item.tag.CustomModelData

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:knowledge_book",tag:{CustomModelData:231245}}},tag=!merchant.has_dropped_emeralds] if score @s isEmeraldPouch matches 231245 run scoreboard players set @s isEmeraldPouch 1
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:knowledge_book",tag:{CustomModelData:231246}}},tag=!merchant.has_dropped_emeralds] if score @s isEmeraldPouch matches 231246 run scoreboard players set @s isEmeraldPouch 1

execute as @e[type=minecraft:item,tag=!merchant.has_dropped_emeralds] if score @s isEmeraldPouch matches 1 at @s if block ~ ~ ~ lava run say Item in lava!
execute as @e[type=minecraft:item,tag=!merchant.has_dropped_emeralds] if score @s isEmeraldPouch matches 1 at @s if block ~ ~ ~ lava run tag @s add merchant.has_dropped_emeralds

execute as @e[type=minecraft:item,tag=!merchant.has_dropped_emeralds] if score @s isEmeraldPouch matches 1 at @s if block ~ ~ ~ cactus run say Item in cactus!
execute as @e[type=minecraft:item,tag=!merchant.has_dropped_emeralds] if score @s isEmeraldPouch matches 1 at @s if block ~ ~ ~ cactus run tag @s add merchant.has_dropped_emeralds