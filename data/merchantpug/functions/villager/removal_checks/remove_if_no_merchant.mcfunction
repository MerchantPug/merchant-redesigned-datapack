#   Unfortunately due to mojank, distance is a spherical thing
execute as @e[type=villager,nbt={Tags:["merchant.villager_modified"]}] at @s unless entity @e[type=minecraft:player,distance=..12,nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:trade_handler"}]}}}] run function merchantpug:villager/remove_unique_trades