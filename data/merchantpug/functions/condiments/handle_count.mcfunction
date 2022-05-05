execute if score #recurse condiment matches 1.. run clear @s minecraft:bread{ioi-pi: {selected: 1b, extra: 1b}} 1

execute if score #recurse condiment matches 1.. run scoreboard players remove #count condiment 1
scoreboard players remove #recurse condiment 1

#   Recurse the function if '#condiment_count's score of 'condiment' is 1 or more
execute if score #recurse condiment matches 1.. run function merchantpug:condiments/handle_count