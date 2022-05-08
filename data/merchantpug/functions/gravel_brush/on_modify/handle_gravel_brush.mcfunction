scoreboard objectives add newDamage dummy
scoreboard objectives add gravel dummy

execute store result score #temp gravel run clear @s minecraft:gravel{ioi-pi: {selected: 1b, extra: 1b}} 0

execute store result score #temp newDamage run data get storage ioi-pi:output item.tag.merchant.damage

scoreboard players add #temp newDamage 1

execute store result storage ioi-pi:output item.tag.merchant.damage int 1 run scoreboard players get #temp newDamage

#   Setup durability text
scoreboard players operation #display newDamage = gravelBrushDurability merchantConfig
scoreboard players operation #display newDamage -= #temp newDamage

#   Clear current item lore
data modify storage ioi-pi:output item.tag.display.Lore set value []

#   Set a sign's text for use with the tag.display.Lore NBT
data modify block -30000000 -64 1603 Text1 set value '["",{"text":"Durability: ","color":"white","italic": false},{"score":{"name":"#display","objective":"newDamage"},"color":"white","italic": false},{"text":"/","color":"white","italic": false},{"score":{"name":"gravelBrushDurability","objective":"merchantConfig"},"color":"white","italic": false}]'

#   Append the string from the sign to the item's `tag.display.Lore` NBT
data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 -64 1603 Text1

#   Handle if the item breaks or not
execute if score #temp newDamage >= gravelBrushDurability merchantConfig run scoreboard players set #broken newDamage 1

execute if score #broken newDamage matches 1 run playsound minecraft:entity.item.break player @a ~ ~ ~ 1.0 1.0
execute if score #broken newDamage matches 1 anchored eyes positioned ^ ^ ^0.25 run particle minecraft:item minecraft:knowledge_book{CustomModelData:127156} ~ ~ ~ 0.25 0 0.25 0 5


#   Store the count of how many items are going to be added to the `item.tag.merchant.emeralds` NBT path of the `ioi-pi:output` storage
clear @s minecraft:gravel{ioi-pi: {selected: 1b, extra: 1b}} 1

#   Add to the '#items_to_give' score
scoreboard players add #items_to_give gravel 1

#   Play brush sound on last score
execute if score #temp gravel matches 1 run playsound minecraft:entity.villager.work_cartographer player @a ~ ~ ~ 1.0 0.75
execute unless score #temp gravel matches 1 if score #broken newDamage matches 1 run playsound minecraft:entity.villager.work_cartographer player @a ~ ~ ~ 1.0 0.75

scoreboard players remove #temp gravel 1

execute if score #temp gravel matches 1.. unless score #broken newDamage matches 1 run function merchantpug:gravel_brush/on_modify/handle_gravel_brush


#   If the item breaks, set it to air
execute if score #broken newDamage matches 1 run data modify storage ioi-pi:output item.id set value "minecraft:air"

#   Clean up
scoreboard players reset #broken newDamage