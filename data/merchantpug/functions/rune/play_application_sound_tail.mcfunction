#  Store the current gametime
execute store result score #current_gametime useTime run time query gametime

execute as @a if score @s useTime = #current_gametime useTime at @s run playsound block.enchantment_table.use player @a ~ ~ ~ 1.0 1.0