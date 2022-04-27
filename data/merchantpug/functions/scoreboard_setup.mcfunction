scoreboard objectives add merchantTraderTradeAmount dummy
scoreboard objectives add merchantTraderXp dummy

scoreboard objectives add merchantTraderProfessionLevel dummy
scoreboard objectives add merchantTraderProfessionLevelCheck dummy
scoreboard objectives add merchantRandomisedTradeId dummy

# Config values
# TODO
scoreboard objectives add merchantConfig dummy
scoreboard players add emeraldPouchMax merchantConfig 0
execute if score emeraldPouchMax merchantConfig matches 0 run scoreboard players set emeraldPouchMax merchantConfig 256