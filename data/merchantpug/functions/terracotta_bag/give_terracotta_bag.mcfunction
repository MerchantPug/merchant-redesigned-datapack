#   Play sounds upon using the item
playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~ 0.9 0.7

#   Setup scoreboards
scoreboard objectives add giveTerracotta dummy
scoreboard players add #recurse giveTerracotta 0
scoreboard players set #recurse giveTerracotta 8

#   Run recursing function
function merchantpug:terracotta_bag/recurse_terracotta_bag

#   Clean up
scoreboard players reset #recurse giveTerracotta