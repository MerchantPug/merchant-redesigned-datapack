#> ioi-pi:private/forceload_chunk
#
#   > Create a burrow that contains MinecraftPhi's components
#
#@within
#   function ioi-pi:load
#   function ioi-pi:impl/enter_dimension


#   Reload the chunk
forceload remove -30000000 1600

forceload add -30000000 1600


#   Set the blocks
execute unless block -30000000 0 1602 minecraft:yellow_shulker_box run setblock -30000000 0 1602 minecraft:yellow_shulker_box

execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing = north]


#   Cover the components with a layer of bedrock
fill -30000000 1 1600 -30000000 1 1615 minecraft:bedrock
