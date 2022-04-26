scoreboard objectives add emeralds dummy
scoreboard objectives add addedEmeralds dummy

execute store result score #temp emeralds run data get storage ioi-pi:output item.tag.merchant.emeralds
execute store result score #temp addedEmeralds run clear @s minecraft:emerald{ioi-pi: {selected: 1b, extra: 1b}}

function merchantpug:emerald_pouch/add_to_emeralds

execute store result storage ioi-pi:output item.tag.merchant.emeralds int 1 run scoreboard players get #temp emeralds

data modify storage ioi-pi:output item.tag.CustomModelData set value 231246

#  Set a sign's text for use with the tag.display.Lore NBT
execute if score #temp emeralds matches ..254 run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "green","italic": false},{"text":"/256","color":"green","italic": false}]'
execute unless score #temp emeralds matches ..254 run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"dark_green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "dark_green","italic": false},{"text":"/256","color":"dark_green","italic": false}]'

#  Reset the lore value
data modify storage ioi-pi:output item.tag.display.Lore set value []

#  Append the string from the sign to the item's `tag.display.Lore` NBT
data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 0 1603 Text1
