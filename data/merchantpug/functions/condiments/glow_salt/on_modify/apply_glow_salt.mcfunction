#   Add a scoreboard objective
scoreboard objectives add condiment dummy

#   Play a sound event upon applying the condiment to the food
playsound minecraft:block.sand.step player @a ~ ~ ~ 0.35 1.2
playsound minecraft:entity.glow_squid.ambient player @a ~ ~ ~ 1.0 1.0

#   Store the count of how much glow salt was used on the item
execute store result score #condiment_count condiment run clear @s minecraft:nether_brick{ioi-pi: {selected: 1b, extra: 1b}} 0

#   Get the count of the output item
execute store result score #count condiment run data get storage ioi-pi:output item.Count
data modify storage merchantpug:previous_food item set from storage ioi-pi:output item

execute if score #count condiment < #condiment_count condiment run scoreboard players operation #condiment_count condiment = #count condiment

#   Set the recurse scoreboard (used in the function below) to the same amount as the condiment item stack count
scoreboard players operation #recurse condiment = #condiment_count condiment

#   Set the count of the output item
function merchantpug:condiments/handle_count

execute if score #recurse condiment matches 1.. run scoreboard players remove #count condiment 1

execute store result storage merchantpug:previous_food item.Count byte 1 run scoreboard players get #count condiment
execute store result storage ioi-pi:output item.Count byte 1 run scoreboard players get #condiment_count condiment

#  Append a string to the item's `tag.display.Lore` NBT
data modify storage merchantpug:temp prev_lore set from storage ioi-pi:output item.tag.display.Lore

data modify storage merchantpug:temp new_lore set value []

execute if data storage merchantpug:temp prev_lore[0] run function merchantpug:condiments/remove_lore

data modify storage ioi-pi:output item.tag.display.Lore set from storage merchantpug:temp new_lore

data modify block -30000000 -64 1603 Text1 set value '["",{"text":"Condiment: Glow Salt","color":"blue","italic": false}]'

#  Append the string from the sign to the item's `tag.display.Lore` NBT
data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 -64 1603 Text1
data modify storage ioi-pi:output item.tag.merchant.condiment_id set value 1b

#   Cleanup
scoreboard players reset #count condiment