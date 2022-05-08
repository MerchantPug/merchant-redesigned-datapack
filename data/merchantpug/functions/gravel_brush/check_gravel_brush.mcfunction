scoreboard objectives add modelData dummy

execute store result score #temp modelData run data get storage ioi-pi:output item.tag.CustomModelData

execute if score on_modify ioi-pi matches 1 if entity @s[tag = merchant.gravel_brush] if data storage ioi-pi:output {item:{id:"minecraft:knowledge_book"}} if score #temp modelData matches 127156 run function merchantpug:gravel_brush/on_modify/handle_gravel_brush
#   Play a sound event upon putting emeralds to the Emerald Pouc

scoreboard players reset #temp modelData

execute if score after_modifying ioi-pi matches 1 if entity @s[tag=merchant.gravel_brush] run function merchantpug:gravel_brush/after_modify/give_flint