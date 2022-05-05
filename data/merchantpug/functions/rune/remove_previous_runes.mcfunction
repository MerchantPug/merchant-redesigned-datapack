data modify storage merchantpug:temp current_power set from storage merchantpug:temp prev_lore[0]

execute if data storage merchantpug:temp {current_power:{Slot:"mainhand", Hidden:0b, Negative: 0b, Power: "merchantpug:global/runes/effect/emerald_rune_tool"}} run scoreboard players set #blacklisted merchantRune 1

execute unless score #blacklisted merchantRune matches 1 run data modify storage merchantpug:temp new_powers append from storage merchantpug:temp current_power

scoreboard players reset #blacklisted merchantRune

data remove storage merchantpug:temp current_power[0]

execute if data storage merchantpug:temp current_power[0] run function merchantpug:rune/remove_previous_runes

