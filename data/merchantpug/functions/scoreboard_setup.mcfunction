scoreboard objectives add merchantTraderTradeAmount dummy
scoreboard objectives add merchantTraderXp dummy

scoreboard objectives add merchantTraderProfessionLevel dummy
scoreboard objectives add merchantTraderProfessionLevelCheck dummy
scoreboard objectives add merchantRandomisedTradeId dummy

# Config values
# TODO
scoreboard objectives add config dummy
scoreboard players add emeraldPouchMax config 0
execute if score emeraldPouchMax config matches 0 run scoreboard players set emeraldPouchMax config 256