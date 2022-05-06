scoreboard players add @s merchantRainbowParticleColor 0
scoreboard players add @s merchantRainbowParticleIndex 0

#   Run the particles
execute if score @s merchantRainbowParticleColor matches 0 run particle dust 1.0 0.0 0.0 1.0 ^ ^ ^ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleColor matches 1 run particle dust 1.0 0.5 0.0 1.0 ^ ^ ^ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleColor matches 2 run particle dust 1.0 1.0 0.0 1.0 ^ ^ ^ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleColor matches 3 run particle dust 0.0 1.0 0.0 1.0 ^ ^ ^ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleColor matches 4 run particle dust 0.0 1.0 1.0 1.0 ^ ^ ^ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleColor matches 5 run particle dust 0.0 0.0 1.0 1.0 ^ ^ ^ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleColor matches 6 run particle dust 0.5 0.0 1.0 1.0 ^ ^ ^ 0.25 0.25 0.25 0 1 force
execute if score @s merchantRainbowParticleColor matches 7 run particle dust 1.0 0.0 1.0 1.0 ^ ^ ^ 0.25 0.25 0.25 0 1 force

#   Add to the player's related scoreboard objectives
scoreboard players add @s merchantRainbowParticleColor 1
scoreboard players add @s merchantRainbowParticleIndex 1

#   Reset the color if it exceeds the maximum id
execute if score @s merchantRainbowParticleColor matches 8 run scoreboard players set @s merchantRainbowParticleColor 0

#   Recurse the function if the 'merchantRainbowParticleIndex' is less than 2
execute if score @s merchantRainbowParticleIndex matches ..1 run function merchantpug:rune/rainbow_rune/rainbow_rune_particle_head_feet

scoreboard players reset @s merchantRainbowParticleIndex