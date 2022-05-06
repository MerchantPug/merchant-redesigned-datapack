scoreboard objectives add merchantRainbowParticleToolColor dummy

execute as @a[tag=merchant.rainbow_rune_block] run scoreboard players add @s merchantRainbowParticleToolColor 0

#   Run the particles
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 0 run particle dust 1.0 0.0 0.0 1.0 ~ ~ ~ 0.1 0 0.1 0 1 force
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 1 run particle dust 1.0 0.5 0.0 1.0 ~ ~ ~ 0.1 0 0.1 0 1 force
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 2 run particle dust 1.0 1.0 0.0 1.0 ~ ~ ~ 0.1 0 0.1 0 1 force
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 3 run particle dust 0.0 1.0 0.0 1.0 ~ ~ ~ 0.1 0 0.1 0 1 force
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 4 run particle dust 0.0 1.0 1.0 1.0 ~ ~ ~ 0.1 0 0.1 0 1 force
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 5 run particle dust 0.0 0.0 1.0 1.0 ~ ~ ~ 0.1 0 0.1 0 1 force
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 6 run particle dust 0.5 0.0 1.0 1.0 ~ ~ ~ 0.1 0 0.1 0 1 force
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 7 run particle dust 1.0 0.0 1.0 1.0 ~ ~ ~ 0.1 0 0.1 0 1 force

#   Add to the player's related scoreboard objectives
execute as @a[tag=merchant.rainbow_rune_block] run scoreboard players add @s merchantRainbowParticleToolColor 1

#   Reset the color if it exceeds the maximum id
execute as @a[tag=merchant.rainbow_rune_block] if score @s merchantRainbowParticleToolColor matches 8 run scoreboard players set @s merchantRainbowParticleToolColor 0