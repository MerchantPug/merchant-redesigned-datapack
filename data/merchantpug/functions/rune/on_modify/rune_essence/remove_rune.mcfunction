#   Setup scoreboards
scoreboard objectives add useTime dummy
scoreboard objectives add merchantRune dummy

#   Play a sound event upon applying the condiment to the food
playsound entity.illusioner.prepare_mirror player @a ~ ~ ~ 1.0 1.5
playsound entity.illusioner.cast_spell player @a ~ ~ ~ 1.0 1.0
execute store result score @s useTime run schedule function merchantpug:rune/play_removal_sound_tail 5t

#  Append a string to the item's `tag.display.Lore` NBT
data modify storage merchantpug:temp prev_powers set from storage ioi-pi:output item.tag.Powers

data modify storage merchantpug:temp new_powers set value []

execute if data storage merchantpug:temp prev_powers[0] run function merchantpug:rune/remove_previous_runes

data modify storage ioi-pi:output item.tag.Powers set from storage merchantpug:temp new_powers