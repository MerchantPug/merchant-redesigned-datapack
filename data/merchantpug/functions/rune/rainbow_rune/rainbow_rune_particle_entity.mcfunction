scoreboard objectives add merchantRainbowParticleToolColor dummy
scoreboard objectives add merchantRainbowParticleEntityIndex dummy

scoreboard players add @s merchantRainbowParticleToolColor 0
scoreboard players add @s merchantRainbowParticleEntityIndex 0

#   Run the particles
execute if score @s merchantRainbowParticleToolColor matches 0 run particle dust 1.0 0.0 0.0 1.0 ~ ~ ~ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleToolColor matches 1 run particle dust 1.0 0.5 0.0 1.0 ~ ~ ~ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleToolColor matches 2 run particle dust 1.0 1.0 0.0 1.0 ~ ~ ~ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleToolColor matches 3 run particle dust 0.0 1.0 0.0 1.0 ~ ~ ~ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleToolColor matches 4 run particle dust 0.0 1.0 1.0 1.0 ~ ~ ~ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleToolColor matches 5 run particle dust 0.0 0.0 1.0 1.0 ~ ~ ~ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleToolColor matches 6 run particle dust 0.5 0.0 1.0 1.0 ~ ~ ~ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleToolColor matches 7 run particle dust 1.0 0.0 1.0 1.0 ~ ~ ~ 0.25 0.25 0.25 0 1 force

#   Add to the player's related scoreboard objectives
scoreboard players add @s merchantRainbowParticleToolColor 1
scoreboard players add @s merchantRainbowParticleEntityIndex 1

#   Reset the color if it exceeds the maximum id
execute if score @s merchantRainbowParticleToolColor matches 8 run scoreboard players set @s merchantRainbowParticleToolColor 0

#   Recurse the function if the 'merchantRainbowParticleEntityIndex' is less than 4
execute if score @s merchantRainbowParticleEntityIndex matches ..3 run function merchantpug:rune/rainbow_rune/rainbow_rune_particle_entity


scoreboard players reset @s merchantRainbowParticleEntityIndex