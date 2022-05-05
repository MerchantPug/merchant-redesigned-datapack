data modify storage merchantpug:temp item_lore_line set from storage merchantpug:temp prev_lore[0]

execute if data storage merchantpug:temp {item_lore_line:'{"extra":[{"italic":false,"color":"blue","text":"Condiment: Glow Salt"}],"text":""}'} run scoreboard players set #blacklisted_line condiment 1
execute if data storage merchantpug:temp {item_lore_line:'{"extra":[{"italic":false,"color":"blue","text":"Condiment: Parrot Macadamias"}],"text":""}'} run scoreboard players set #blacklisted_line condiment 1

execute unless score #blacklisted_line condiment matches 1 run data modify storage merchantpug:temp new_lore append from storage merchantpug:temp item_lore_line

scoreboard players reset #blacklisted_line condiment

data remove storage merchantpug:temp prev_lore[0]

execute if data storage merchantpug:temp prev_lore[0] run function merchantpug:condiments/remove_lore