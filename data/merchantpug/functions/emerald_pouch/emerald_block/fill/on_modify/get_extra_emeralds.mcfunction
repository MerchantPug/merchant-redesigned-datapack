scoreboard players set #nine emeralds 9

scoreboard players operation #set_extra_emeralds_to emeralds = #items_to_add emeralds

scoreboard players operation #set_extra_emeralds_to emeralds -= emeraldPouchMax merchantConfig

scoreboard players operation #emerald_block_remainder emeralds = #set_extra_emeralds_to emeralds
scoreboard players operation #emerald_block_remainder emeralds %= #nine emeralds

scoreboard players operation #set_extra_emeralds_to emeralds /= #nine emeralds

scoreboard players operation #items_to_add emeralds = emeraldPouchMax merchantConfig

scoreboard players set #overflow emeralds 1