execute as @e[type=minecraft:villager,nbt={Tags:["merchant.villager_modified"]}] store result score @s merchantTraderProfessionLevelCheck run data get entity @s VillagerData.level

execute as @e[type=minecraft:villager,nbt={Tags:["merchant.villager_modified"]}] unless score @s merchantTraderProfessionLevelCheck = @s merchantTraderProfessionLevel run function merchantpug:villager/remove_unique_trades

execute as @e[type=minecraft:villager,nbt=!{Tags:["merchant.villager_modified"]}] unless score @s merchantTraderProfessionLevelCheck = @s merchantTraderProfessionLevel store result score @s merchantTraderProfessionLevel run data get entity @s VillagerData.level