#   Prepare the Emerald item in the shulker box
data modify block -30000000 0 1602 Items set value [{Slot:0b, id:"minecraft:emerald", Count:1b}]
execute store result block -30000000 0 1602 Items[{Slot:0b}].Count byte 1 run scoreboard players get #withdraw_amount emeralds

#   Give the emeralds
loot give @s mine -30000000 0 1602 minecraft:air{drop_contents: 1b}

#   Do some clean up
data remove block -30000000 0 1602 Items