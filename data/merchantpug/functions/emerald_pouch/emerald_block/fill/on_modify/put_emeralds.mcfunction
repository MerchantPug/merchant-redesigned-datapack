#   Play a sound event upon putting emeralds to the Emerald Pouch
playsound minecraft:item.bundle.insert player @a ~ ~ ~ 1.0 1.0

#   Store the count of how many items are going to be added to the `item.tag.merchant.emeralds` NBT path of the `ioi-pi:output` storage
execute store result score #items_to_add emeralds run clear @s minecraft:emerald_block{ioi-pi: {selected: 1b, extra: 1b}} 0
scoreboard players set #nine emeralds 9
scoreboard players operation #items_to_add emeralds *= #nine emeralds

#   Store the count of how many items have been added so far to the `item.tag.merchant.emeralds` NBT path of the `ioi-pi:output` storage
execute store result score #items_added emeralds run data get storage ioi-pi:output item.tag.merchant.emeralds

#   Add the sum of `#items_to_add` and `#items_added` score holders to the `item.tag.merchant.emeralds` NBT path of the `ioi-pi:output` storage
scoreboard players operation #items_to_add emeralds += #items_added emeralds

execute if score #items_to_add emeralds > emeraldPouchMax merchantConfig run function merchantpug:emerald_pouch/emerald_block/fill/on_modify/get_extra_emeralds

execute store result storage ioi-pi:output item.tag.merchant.emeralds int 1 run scoreboard players get #items_to_add emeralds

#   Display the count of the Emeralds stored in the Emerald Pouch
data modify storage ioi-pi:output item.tag.CustomModelData set value 231246

#  Set a sign's text for use with the tag.display.Lore NBT
execute if score #items_to_add emeralds < emeraldPouchMax merchantConfig run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "green","italic": false},{"text":"/","color":"green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"merchantConfig"},"color":"green","italic": false}]'
execute unless score #items_to_add emeralds < emeraldPouchMax merchantConfig run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"dark_green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "dark_green","italic": false},{"text":"/","color":"dark_green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"merchantConfig"},"color":"dark_green","italic": false}]'

#  Reset the lore value
data modify storage ioi-pi:output item.tag.display.Lore set value []

#  Append the string from the sign to the item's `tag.display.Lore` NBT
data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 0 1603 Text1


#   Check for overflows
execute if score #overflow emeralds matches 1.. run function merchantpug:emerald_pouch/emerald_block/fill/on_modify/set_extra_emeralds

execute unless score #overflow emeralds matches 1.. run clear @s minecraft:emerald_block{ioi-pi: {selected: 1b, extra: 1b}}