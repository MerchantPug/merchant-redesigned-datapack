scoreboard objectives add constants dummy
scoreboard players add #zero constants 0

data remove storage ioi-pi:output item.tag.merchant.init

#  Set a sign's text for use with the tag.display.Lore NBT
execute if score emeraldPouchMax merchantConfig > #zero constants run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"green","italic": false},{"text": "0", "color": "green","italic": false},{"text":"/","color":"green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"merchantConfig"},"color":"green","italic": false}]'
execute unless score emeraldPouchMax merchantConfig > #zero constants run data modify block -30000000 0 1603 Text1 set value '["",{"text":"€","bold":true,"color":"dark_green","italic": false},{"text": "0", "color": "dark_green","italic": false},{"text":"/","color":"dark_green","italic": false},{"score":{"name":"emeraldPouchMax","objective":"merchantConfig"},"color":"dark_green","italic": false}]'

#  Append the string from the sign to the item's `tag.display.Lore` NBT
data modify storage ioi-pi:output item.tag.display.Lore append from block -30000000 0 1603 Text1