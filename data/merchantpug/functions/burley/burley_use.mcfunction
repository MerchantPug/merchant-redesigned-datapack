#   Check if Burley is in water, then spawn a marker
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["merchant.burley"]}

#   Grant Burley Handler power
execute as @e[type=minecraft:armor_stand,tag=merchant.burley] run power grant @s merchantpug:burley/burley_handler

#   Decrement the score of the score holder
scoreboard players remove #temp merchantBurleyCount 1

#   Decrement 
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bread",tag:{CustomModelData:417651}}}] at @s if block ~ ~ ~ minecraft:water store result entity @s Item.Count int 1 run scoreboard players get #temp merchantBurleyCount

#  Recurse this function only if the score of the `merchantBurleyCount` score holder is 1 or greater
execute if score #temp merchantBurleyCount matches 1.. run function merchantpug:burley/burley_use