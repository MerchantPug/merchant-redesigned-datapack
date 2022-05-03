#  Store objectives for profession checks
scoreboard objectives add merchantIsCartographer dummy
scoreboard objectives add merchantIsFisherman dummy
scoreboard objectives add merchantIsLeatherworker dummy
scoreboard objectives add merchantIsMason dummy
scoreboard objectives add merchantIsShepherd dummy
scoreboard objectives add merchantIsSmith dummy


#   Store Xp so it can check for it before storing uses of trades
execute store result score @s merchantTraderXp run data get entity @s Xp

#   Initial setup of Randomised Trade ID score
scoreboard players add @s merchantRandomisedTradeId 0


#   CARTOGRAPHER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run scoreboard players set @s merchantIsCartographer 1

#   Add the cartographer trades
execute if score @s merchantIsCartographer matches 1 run function merchantpug:villager/add_cartographer_trades

#   Cleanup
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #temp foundJungle
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #not_found foundJungle
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #temp foundFlowerForest
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #not_found foundFlowerForest
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #temp foundBadlands
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #not_found foundBadlands
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #temp foundIceSpikes
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #not_found foundIceSpikes
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #temp foundWarmOcean
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #not_found foundWarmOcean

execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #temp foundNothing
execute if score @s merchantIsCartographer matches 1 run scoreboard players reset #all foundNothing

#   FISHERMAN

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run scoreboard players set @s merchantIsFisherman 1

#   Add trade to villager
execute if score @s merchantIsFisherman matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:6,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:bread",Count:3b,tag:{display:{Name:'{"text":"Burley","italic":false}'},CustomModelData:417651}}}

#   Add stored uses of trade to villager
execute if score @s merchantIsFisherman matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:417651}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


#   LEATHERWORKER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run scoreboard players set @s merchantIsLeatherworker 1

#   Add trade to villager
execute if score @s merchantIsLeatherworker matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:10b},sell:{id:"minecraft:bundle",Count:1b},priceMultiplier:0.04f}

#   Add stored uses of trade to villager
execute if score @s merchantIsLeatherworker matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:bundle",Count:1b}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses



#   MASON

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsMason 1

#   Run loot table for random trade if the 'merchantRandomisedTradeId' score of the villager is 0
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 0 store result score @s merchantRandomisedTradeId run loot spawn ~ ~ ~ loot merchantpug:random/mason_rng

#   Terracotta Bag Warm (Random Trade 1)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Warm)","italic":false}'},CustomModelData:231248}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 store result entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231248}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Terracotta Bag Cool (Random Trade 2)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Cool)","italic":false}'},CustomModelData:231249}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 store result entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231249}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Terracotta Bag Shades (Random Trade 3)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:bread",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Cool)","italic":false}'},CustomModelData:231250}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 store result entity @s Offers.Recipes[{sell:{id:"minecraft:bread",tag:{CustomModelData:231250}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses



#   SHEPHERD

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run scoreboard players set @s merchantIsShepherd 1

#   Add trade to villager
execute if score @s merchantIsShepherd matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:1,buy:{id:"minecraft:emerald",Count:48b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Golden Shears","color":"white","italic":false}'},CustomModelData:15641}},priceMultiplier:0.12f}

#   Add stored uses of trade to villager
execute if score @s merchantIsShepherd matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:15641}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Setup durability text

#  Set a sign's text for use with the tag.display.Lore NBT
execute if score @s merchantIsShepherd matches 1 if score goldenShearsDurability merchantConfig matches ..0 run scoreboard players set goldenShearsDurability merchantConfig 1
execute if score @s merchantIsShepherd matches 1 run data modify block -30000000 0 1603 Text1 set value '["",{"text":"Durability: ","color":"yellow","italic": false},{"score":{"name":"goldenShearsDurability","objective":"merchantConfig"},"color":"yellow","italic": false},{"text":"/","color":"yellow","italic": false},{"score":{"name":"goldenShearsDurability","objective":"merchantConfig"},"color":"yellow","italic": false}]'
#  Append the string from the sign to the item's `tag.display.Lore` NBT
execute if score @s merchantIsShepherd matches 1 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:15641}}}].sell.tag.display.Lore append from block -30000000 0 1603 Text1



#   SMITHS (ARMORER/TOOLSMITH/WEAPONSMITH)

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run scoreboard players set @s merchantIsSmith 1

#   Add trade to villager
execute if score @s merchantIsSmith matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Anvil Polish","color":"white","italic":false}'},CustomModelData:156655}},priceMultiplier:0.08f}

#   Add stored uses of trade to villager
execute if score @s merchantIsSmith matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:156655}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


#   Add tag that marks it as modified
tag @s add merchant.villager_modified

#   Reset profession detection scoreboards
scoreboard players reset @s merchantIsCartographer
scoreboard players reset @s merchantIsFisherman
scoreboard players reset @s merchantIsLeatherworker
scoreboard players reset @s merchantIsMason
scoreboard players reset @s merchantIsShepherd
scoreboard players reset @s merchantIsSmith