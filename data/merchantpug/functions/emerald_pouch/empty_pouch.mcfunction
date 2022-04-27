scoreboard objectives add constants dummy
scoreboard objectives add depositedEmeralds dummy
scoreboard objectives add emeraldsToWithdraw dummy
scoreboard objectives add lessThanZero dummy

scoreboard players set #zero constants 0
scoreboard players set #stacksize constants 64
execute store result score #temp depositedEmeralds run data get storage ioi-pi:output item.tag.merchant.emeralds

#   Math Block
scoreboard players operation #temp emeraldsToWithdraw = #temp depositedEmeralds
scoreboard players operation #temp emeraldsToWithdraw -= #stacksize constants

#  Check if the total would be in the negative values, if so, set the deposited emeralds to the entire bag
execute if score #temp emeraldsToWithdraw < #zero constants run scoreboard players set #temp lessThanZero 1

#  If the emeralds to withdraw is less than 0...
execute if score #temp lessThanZero matches 1 run scoreboard players operation #temp2 emeraldsToWithdraw = #temp depositedEmeralds
execute if score #temp lessThanZero matches 1 run scoreboard players set #temp emeraldsToWithdraw 0

# If the emeralds to withdraw is equal to or more than 0
execute if score #temp lessThanZero matches 0 run scoreboard players operation #temp2 emeraldsToWithdraw = #stacksize constants

#   Add emeralds to Yellow Shulker Storage
data modify block -30000000 0 1602 Items set value [{Slot:0b, id:"minecraft:emerald", Count:1b}]
execute store result block -30000000 0 1602 Items[{Slot:0b}].Count byte 1 run scoreboard players get #temp2 emeraldsToWithdraw

#   Give Yellow Shulker Storage to player
loot spawn ~ ~ ~ mine -30000000 0 1602 air{drop_contents:1b}

#   Reset item model if Storage is 0 stored emeralds
execute store result storage ioi-pi:output item.tag.merchant.emeralds int 1 run scoreboard players get #temp emeraldsToWithdraw

execute if score #temp emeraldsToWithdraw matches 0 run data modify storage ioi-pi:output item.tag.CustomModelData set value 231245


#  Set a sign's text for use with the tag.display.Lore NBT
execute if score #temp emeralds matches ..254 run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "green","italic": false},{"text":"/","color":"green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"config"},"color":"green","italic": false}]'
execute unless score #temp emeralds matches ..254 run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"dark_green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "dark_green","italic": false},{"text":"/","color":"dark_green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"config"},"color":"dark_green","italic": false}]'

#  Reset the lore value
data modify storage ioi-pi:output item.tag.display.Lore set value []

#  Append the string from the sign to the item's `tag.display.Lore` NBT
data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 0 1603 Text1

#  Clean up
scoreboard players set #temp lessThanZero 0