#   Setup scoreboards
scoreboard objectives add giveTerracotta dummy
scoreboard players add #recurse giveTerracotta 0

scoreboard players set #recurse giveTerracotta 12

function merchantpug:terracotta_bag/recurse_terracotta_bag

scoreboard players reset #recurse giveTerracotta