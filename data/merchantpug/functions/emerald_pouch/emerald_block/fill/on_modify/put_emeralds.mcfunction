#   Play a sound event upon putting emeralds to the Emerald Pouch
playsound minecraft:item.bundle.insert player @a ~ ~ ~ 1.0 1.0

#   Store the count of how many items are going to be added to the `item.tag.merchant.emeralds` NBT path of the `ioi-pi:output` storage
execute store result score #items_to_add emeralds run clear @s minecraft:emerald_block{ioi-pi: {selected: 1b, extra: 1b}} 0
scoreboard players set #nine emeralds 9
scoreboard players operation #items_to_add emeralds *= #nine emeralds

#   Store the count of how many items have been added so far to the `item.tag.merchant.emeralds` NBT path of the `ioi-pi:output` storage
execute store result score #items_added emeralds run data get storage ioi-pi:output item.tag.merchant.emeralds



#   Add the sum of `#items_to_add` and `#items_added` score holders to the `item.tag.merchant.emeralds` NBT path of the `ioi-pi:output` storage
scoreboard players operation #items_to_add emeralds += #items_added emeraldsToWithdraw

execute if score #items_to_add emeralds > emeraldPouchMax merchantConfig run function merchantpug:emerald_pouch/emerald_block/fill/on_modify/get_extra_emeralds

data modify block -30000000 0 1607 Items append value [{Slot:27b, id:"minecraft:emerald", Count:1b}]
execute store result block -30000000 0 1607 Items[{id:"minecraft:emerald"}].Count byte 1 run scoreboard players get #emerald_block_remainder emeralds

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

#   Get the sum of `#inventory_elements` and `#eyes_elements` score holders to determine if the Emeralds should be spawned or given
execute store result score #total_elements emeralds run scoreboard players add #inventory_elements emeralds 1

#   If the score of the `#total_elements` score holder is 37 or greater, spawn the Emerald items at the position of the player. Otherwise, give the Emerald items
execute if score #total_elements emeralds matches 37.. run loot spawn ~ ~ ~ mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

execute unless score #total_elements emeralds matches 37.. run loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

#   Check for overflows
execute if score #overflow emeralds matches 1.. run function merchantpug:emerald_pouch/emerald_block/fill/on_modify/set_extra_emeralds

execute unless score #overflow emeralds matches 1.. run clear @s minecraft:emerald_block{ioi-pi: {selected: 1b, extra: 1b}}