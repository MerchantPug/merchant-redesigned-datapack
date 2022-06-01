#> ioi-pi:impl/enter_dimension
#
#   > Check if the MinecraftPhi chunk in the current dimension is forceloaded
#
#@within advancement ioi-pi:impl/enter_dimension


#   If the MinecraftPhi chunk in the current dimension is not forceloaded, forceload it
execute store result score #isPhiChunkLoaded ioi-pi run forceload query -30000000 1600

execute if score #isPhiChunkLoaded ioi-pi matches 0 run function ioi-pi:private/forceload_chunk


#   Revoke the advancement
advancement revoke @s only ioi-pi:impl/enter_dimension
