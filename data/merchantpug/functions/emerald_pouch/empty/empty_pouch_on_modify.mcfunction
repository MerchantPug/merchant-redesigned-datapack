#   Play sound upon emptying pouch
playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~ 1.0 1.0

#   Add scoreboard objectives for preparation
scoreboard objectives add emeralds dummy

scoreboard players set #64 emeralds 64

#   Count the emerald amount of the pouch
execute store result score #pouch_emeralds emeralds run data get storage ioi-pi:output item.tag.merchant.emeralds

#   Remove the Lore NBT from the Emerald Pouch item
data modify storage ioi-pi:output item.tag.display.Lore set value []

scoreboard players remove #pouch_emeralds emeralds 64

#   If the score would leave the player with a negative amount of emeralds, set the score to 0
execute if score #pouch_emeralds emeralds matches ..-1 store result score #withdraw_amount emeralds run data get storage ioi-pi:output item.tag.merchant.emeralds
execute unless score #pouch_emeralds emeralds matches ..-1 run scoreboard players set #withdraw_amount emeralds 64

execute if score #pouch_emeralds emeralds matches ..-1 run scoreboard players set #pouch_emeralds emeralds 0

execute store result storage ioi-pi:output item.tag.merchant.emeralds int 1 run scoreboard players get #pouch_emeralds emeralds

#   If the emeralds left in the pouch is 0, set the pouch to the empty model state
execute if score #pouch_emeralds emeralds matches 0 run data modify storage ioi-pi:output item.tag.CustomModelData set value 231245

#  Set a sign's text for use with the tag.display.Lore NBT
execute if score #pouch_emeralds emeralds < emeraldPouchMax merchantConfig run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "green","italic": false},{"text":"/","color":"green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"merchantConfig"},"color":"green","italic": false}]'
execute unless score #pouch_emeralds emeralds < emeraldPouchMax merchantConfig run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"dark_green","italic": false},{"storage": "ioi-pi:output", "nbt": "item.tag.merchant.emeralds", "color": "dark_green","italic": false},{"text":"/","color":"dark_green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"merchantConfig"},"color":"dark_green","italic": false}]'

#  Append the string from the sign to the item's `tag.display.Lore` NBT
data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 0 1603 Text1