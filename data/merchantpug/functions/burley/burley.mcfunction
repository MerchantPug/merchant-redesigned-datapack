scoreboard objectives add merchantBurleyCount dummy

#   Get the count of the item stack of the item entity before calling a recursive function
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bread",tag:{CustomModelData:417651}}}] at @s if block ~ ~ ~ minecraft:water store result score @s merchantBurleyCount run data get entity @s Item.Count

#   Call the recursive function
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bread",tag:{CustomModelData:417651}}}] at @s if block ~ ~ ~ minecraft:water run function merchantpug:burley/burley_use