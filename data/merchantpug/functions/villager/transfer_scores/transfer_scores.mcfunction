execute as @e[type=villager,nbt={Tags:["merchant.villager_modified"]}] run power grant @s merchantpug:transfer_villager_scores merchantpug:transfer_scores

execute as @e[type=zombie_villager,nbt={ConversionTime:1}] run power grant @s merchantpug:transfer_zombie_scores merchantpug:transfer_scores

#  Execute as all villager entities that has the `merchant.villager_paired` tag
execute as @e[type=#merchantpug:villagers, tag = merchant.villager_paired] at @s run function merchantpug:villager/villager_marker/check_pair_as_villager