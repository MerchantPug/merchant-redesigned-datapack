scoreboard objectives add isEmeraldPouch dummy

execute store result score #modelData isEmeraldPouch run data get storage ioi-pi:output item.tag.CustomModelData

execute if score #modelData isEmeraldPouch matches 231245 run scoreboard players set #temp isEmeraldPouch 1
execute if score #modelData isEmeraldPouch matches 231246 run scoreboard players set #temp isEmeraldPouch 1

execute if score on_modify ioi-pi matches 1 if entity @s[tag = merchant.fill_pouch_block] if data storage ioi-pi:output {item:{id:"minecraft:knowledge_book"}} if score #temp isEmeraldPouch matches 1 run function merchantpug:emerald_pouch/emerald_block/fill/fill_pouch

scoreboard players reset #temp isEmeraldPouch