scoreboard objectives add emeralds dummy
scoreboard objectives add addedEmeralds dummy

execute store result score #temp emeralds run data get storage ioi-pi:output item.tag.merchant.emeralds
execute if score #temp emeralds < emeraldPouchMax merchantConfig store result score #temp addedEmeralds run clear @s minecraft:emerald{ioi-pi: {selected: 1b, extra: 1b}}

#   Play sound if emeralds are above 0
execute if score #temp emeralds < emeraldPouchMax merchantConfig run playsound minecraft:item.bundle.insert player @e[type=minecraft:player,distance=..6] ~ ~ ~ 1.0 1.0

execute if score #temp emeralds < emeraldPouchMax merchantConfig run function merchantpug:emerald_pouch/add_to_emeralds

execute store result storage ioi-pi:output item.tag.merchant.emeralds int 1 run scoreboard players get #temp emeralds

data modify storage ioi-pi:output item.tag.CustomModelData set value 231246

#  Set a sign's text for use with the tag.display.Lore NBT
execute if score #temp emeralds < emeraldPouchMax merchantConfig run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "green","italic": false},{"text":"/","color":"green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"merchantConfig"},"color":"green","italic": false}]'
execute unless score #temp emeralds < emeraldPouchMax merchantConfig run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"dark_green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "dark_green","italic": false},{"text":"/","color":"dark_green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"merchantConfig"},"color":"dark_green","italic": false}]'

#  Reset the lore value
data modify storage ioi-pi:output item.tag.display.Lore set value []

#  Append the string from the sign to the item's `tag.display.Lore` NBT
data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 0 1603 Text1
