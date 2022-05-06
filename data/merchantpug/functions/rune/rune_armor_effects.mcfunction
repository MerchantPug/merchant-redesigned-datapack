#   Setup scoreboard objectives
scoreboard objectives add merchantParticleTicks dummy
scoreboard objectives add merchantRainbowParticleColor dummy
scoreboard objectives add merchantRainbowParticleIndex dummy
execute store result score #current_gametime merchantParticleTicks run time query gametime
scoreboard players set #tickRate merchantParticleTicks 32

scoreboard players operation #current_gametime merchantParticleTicks %= #tickRate merchantParticleTicks

execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/emerald/emerald_rune_head"}]}}}] anchored eyes if score #current_gametime merchantParticleTicks matches 0 at @s run particle happy_villager ^ ^ ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/emerald/emerald_rune_chest"}]}}}] if score #current_gametime merchantParticleTicks matches 8 at @s run particle happy_villager ^ ^1.0 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/emerald/emerald_rune_legs"}]}}}] if score #current_gametime merchantParticleTicks matches 16 at @s run particle happy_villager ^ ^0.5 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/emerald/emerald_rune_feet"}]}}}] if score #current_gametime merchantParticleTicks matches 24 at @s run particle happy_villager ^ ^ ^ 0.25 0.25 0.25 0 2 force

execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/fire/fire_rune_head"}]}}}] anchored eyes if score #current_gametime merchantParticleTicks matches 0 at @s run particle flame ^ ^ ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/fire/fire_rune_chest"}]}}}] if score #current_gametime merchantParticleTicks matches 8 at @s run particle flame ^ ^1.0 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/fire/fire_rune_legs"}]}}}] if score #current_gametime merchantParticleTicks matches 16 at @s run particle flame ^ ^0.5 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/fire/fire_rune_feet"}]}}}] if score #current_gametime merchantParticleTicks matches 24 at @s run particle flame ^ ^ ^ 0.25 0.25 0.25 0 2 force

execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/frost/frost_rune_head"}]}}}] anchored eyes if score #current_gametime merchantParticleTicks matches 0 at @s run particle snowflake ^ ^ ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/frost/frost_rune_chest"}]}}}] if score #current_gametime merchantParticleTicks matches 8 at @s run particle snowflake ^ ^1.0 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/frost/frost_rune_legs"}]}}}] if score #current_gametime merchantParticleTicks matches 16 at @s run particle snowflake ^ ^0.5 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/frost/frost_rune_feet"}]}}}] if score #current_gametime merchantParticleTicks matches 24 at @s run particle snowflake ^ ^ ^ 0.25 0.25 0.25 0 2 force

execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/draconic/draconic_rune_head"}]}}}] anchored eyes if score #current_gametime merchantParticleTicks matches 0 at @s run particle dragon_breath ^ ^ ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/draconic/draconic_rune_chest"}]}}}] if score #current_gametime merchantParticleTicks matches 8 at @s run particle dragon_breath ^ ^1.0 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/draconic/draconic_rune_legs"}]}}}] if score #current_gametime merchantParticleTicks matches 16 at @s run particle dragon_breath ^ ^0.5 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/draconic/draconic_rune_feet"}]}}}] if score #current_gametime merchantParticleTicks matches 24 at @s run particle dragon_breath ^ ^ ^ 0.25 0.25 0.25 0 2 force

execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/deep_sea/deep_sea_rune_head"}]}}}] anchored eyes if score #current_gametime merchantParticleTicks matches 0 at @s run particle glow ^ ^ ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/deep_sea/deep_sea_rune_chest"}]}}}] if score #current_gametime merchantParticleTicks matches 8 at @s run particle glow ^ ^1.0 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/deep_sea/deep_sea_rune_legs"}]}}}] if score #current_gametime merchantParticleTicks matches 16 at @s run particle glow ^ ^0.5 ^ 0.25 0.25 0.25 0 2 force
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/deep_sea/deep_sea_rune_feet"}]}}}] if score #current_gametime merchantParticleTicks matches 24 at @s run particle glow ^ ^ ^ 0.25 0.25 0.25 0 2 force

execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/rainbow/rainbow_rune_head"}]}}}] anchored eyes if score #current_gametime merchantParticleTicks matches 0 at @s run function merchantpug:rune/rainbow_rune/rainbow_rune_particle_head_feet
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/rainbow/rainbow_rune_chest"}]}}}] if score #current_gametime merchantParticleTicks matches 8 at @s run function merchantpug:rune/rainbow_rune/rainbow_rune_particle_chest
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/rainbow/rainbow_rune_legs"}]}}}] if score #current_gametime merchantParticleTicks matches 16 at @s run function merchantpug:rune/rainbow_rune/rainbow_rune_particle_legs
execute as @e[nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:global/runes/effect/rainbow/rainbow_rune_feet"}]}}}] if score #current_gametime merchantParticleTicks matches 24 at @s run function merchantpug:rune/rainbow_rune/rainbow_rune_particle_head_feet