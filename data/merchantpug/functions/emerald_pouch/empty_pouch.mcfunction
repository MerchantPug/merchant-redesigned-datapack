scoreboard objectives add constants dummy
scoreboard objectives add depositedEmeralds dummy

scoreboard players set #zero constants 0
scoreboard players set #four constants 4
execute store result score #temp depositedEmeralds run data get storage ioi-pi:output item.tag.merchant.emeralds

#   Math Block
scoreboard players operation #temp2 depositedEmeralds = #temp depositedEmeralds
scoreboard players operation #temp2 depositedEmeralds /= #four constants
scoreboard players operation #temp3 depositedEmeralds = #temp depositedEmeralds
scoreboard players operation #temp3 depositedEmeralds %= #four constants
scoreboard players operation #temp depositedEmeralds = #temp2 depositedEmeralds
scoreboard players operation #temp depositedEmeralds += #temp3 depositedEmeralds

#   Add emeralds to Yellow Shulker Storage
data modify block -30000000 0 1602 Items set value [{Slot:0b, id:"minecraft:emerald", Count:1b},{Slot:1b,id:"minecraft:emerald",Count:1b},{Slot:2b,id:"minecraft:emerald",Count:1b},{Slot:3b,id:"minecraft:emerald",Count:1b}]
execute store result block -30000000 0 1602 Items[{Slot:0b}].Count byte 1 run scoreboard players get #temp depositedEmeralds
execute store result block -30000000 0 1602 Items[{Slot:1b}].Count byte 1 run scoreboard players get #temp2 depositedEmeralds
execute store result block -30000000 0 1602 Items[{Slot:2b}].Count byte 1 run scoreboard players get #temp2 depositedEmeralds
execute store result block -30000000 0 1602 Items[{Slot:3b}].Count byte 1 run scoreboard players get #temp2 depositedEmeralds

#   Give Yellow Shulker Storage to player
loot spawn ~ ~ ~ mine -30000000 0 1602 air{drop_contents:1b}

#   Reset item model and stored emeralds
data modify storage ioi-pi:output item.tag.CustomModelData set value 231245

data modify storage ioi-pi:output item.tag.merchant.emeralds set value 0

#  Reset the lore value
data modify storage ioi-pi:output item.tag.display.Lore set value []
data modify storage ioi-pi:output item.tag.display.Lore append value '["",{"text":"€","bold":true,"color":"green","italic": false},{"text":"0","color":"green","italic": false},{"text":"/256","color":"green","italic": false}]'
