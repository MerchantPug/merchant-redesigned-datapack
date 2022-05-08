#   Unfortunately due to mojank, distance is a spherical thing
#   Handle villagers
execute as @e[type=villager,nbt={Tags:["merchant.villager_modified"]}] at @s unless entity @a[distance=..12,nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:trade_handler"}]}}}] run function merchantpug:villager/remove_unique_trades
#   Handle wandering traders
execute as @e[type=wandering_trader,nbt={Tags:["merchant.villager_modified"]}] at @s unless entity @a[distance=..12,nbt={cardinal_components:{"apoli:powers":{Powers:[{Type:"merchantpug:trade_handler"}]}}}] run function merchantpug:villager/remove_unique_trades