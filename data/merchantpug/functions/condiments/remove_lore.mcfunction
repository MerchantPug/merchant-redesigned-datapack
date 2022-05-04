data modify storage merchantpug:temp item_lore_line set from storage temp item_lore[0]

data modify block -30000000 -64 1603 Text1 set from storage merchantpug:temp item_lore_line

execute if data storage merchantpug:temp {item_lore_line:} run scoreboard players set #blacklisted_line condiment 1

execute unless score #blacklisted_line condiment matches 1 run data modify storage merchantpug:temp new_lore append from storage merchantpug:temp item_lore_line

data remove storage merchantpug:temp item_lore[0]

scoreboard players reset #blacklisted_line condiment

execute if data storage merchantpug:temp item_lore[0] run function merchantpug:condiments/remove_lore