#  Store objectives for profession checks
scoreboard objectives add merchantIsButcher dummy
scoreboard objectives add merchantIsCartographer dummy
scoreboard objectives add merchantIsCleric dummy
scoreboard objectives add merchantIsFarmer dummy
scoreboard objectives add merchantIsFisherman dummy
scoreboard objectives add merchantIsFletcher dummy
scoreboard objectives add merchantIsLeatherworker dummy
scoreboard objectives add merchantIsLibrarian dummy
scoreboard objectives add merchantIsMason dummy
scoreboard objectives add merchantIsShepherd dummy
scoreboard objectives add merchantIsSmith dummy


#   Store Xp so it can check for it before storing uses of trades
execute store result score @s merchantTraderXp run data get entity @s Xp

#   Initial setup of Randomised Trade ID score
scoreboard players add @s merchantRandomisedTradeId 0


#   BUTCHER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run scoreboard players set @s merchantIsButcher 1

#   Run loot table for random trade if the 'merchantRandomisedTradeId' score of the villager is 0
#   This one is more for futureproofing as I will be adding more condiments
execute if score @s merchantIsButcher matches 1 if score @s merchantRandomisedTradeId matches 0 store result score @s merchantRandomisedTradeId run loot spawn ~ ~ ~ loot merchantpug:random/butcher_rng

#   Parrot Macadamias (Random Trade 1)
execute if score @s merchantIsButcher matches 1 if score @s merchantRandomisedTradeId matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:nether_brick",Count:3b,tag:{display:{Name:'{"text":"Glow Salt","italic":false}'},CustomModelData:554615}}}
execute if score @s merchantIsButcher matches 1 if score @s merchantRandomisedTradeId matches 1 store result entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:554615}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


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

#   CLERIC

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run scoreboard players set @s merchantIsCleric 1


#   Run loot table for random trade if the 'merchantRandomisedTradeId' score of the villager is 0
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 0 store result score @s merchantRandomisedTradeId run loot spawn ~ ~ ~ loot merchantpug:random/cleric_rng

#   Emerald Rune (Random Trade 1)
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Emerald Rune","color":"aqua","italic":false}'},CustomModelData:416515,Enchantments:[{id:"null:null",lvl:1s}]}},priceMultiplier:0.08f}
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 1 store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416515}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Flame Rune (Random Trade 2)
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 2 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Flame Rune","color":"aqua","italic":false}'},CustomModelData:416516,Enchantments:[{id:"null:null",lvl:1s}]}},priceMultiplier:0.08f}
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 2 store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416516}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Frost Rune (Random Trade 3)
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 3 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Frost Rune","color":"aqua","italic":false}'},CustomModelData:416517,Enchantments:[{id:"null:null",lvl:1s}]}},priceMultiplier:0.08f}
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 3 store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416517}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Draconic Rune (Random Trade 3)
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 4 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Draconic Rune","color":"aqua","italic":false}'},CustomModelData:416518,Enchantments:[{id:"null:null",lvl:1s}]}},priceMultiplier:0.08f}
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 4 store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416518}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Deep Sea Rune (Random Trade 3)
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 5 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Deep Sea Rune","color":"aqua","italic":false}'},CustomModelData:416519,Enchantments:[{id:"null:null",lvl:1s}]}},priceMultiplier:0.08f}
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 5 store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416519}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Rainbow Rune (Random Trade 3)
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 6 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Rainbow Rune","color":"aqua","italic":false}'},CustomModelData:416520,Enchantments:[{id:"null:null",lvl:1s}]}},priceMultiplier:0.08f}
execute if score @s merchantIsCleric matches 1 if score @s merchantRandomisedTradeId matches 6 store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:416520}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


#   FARMER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run scoreboard players set @s merchantIsFarmer 1

#   Run loot table for random trade if the 'merchantRandomisedTradeId' score of the villager is 0
#   This one is more for futureproofing as I will be adding more condiments
execute if score @s merchantIsFarmer matches 1 if score @s merchantRandomisedTradeId matches 0 store result score @s merchantRandomisedTradeId run loot spawn ~ ~ ~ loot merchantpug:random/farmer_rng

#   Parrot Macadamias (Random Trade 1)
execute if score @s merchantIsFarmer matches 1 if score @s merchantRandomisedTradeId matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:nether_brick",Count:3b,tag:{display:{Name:'{"text":"Parrot Macadamias","italic":false}'},CustomModelData:554616}}}
execute if score @s merchantIsFarmer matches 1 if score @s merchantRandomisedTradeId matches 1 store result entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:554616}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


#   FISHERMAN

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run scoreboard players set @s merchantIsFisherman 1

#   Add trade to villager
execute if score @s merchantIsFisherman matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:6,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:nether_brick",Count:3b,tag:{display:{Name:'{"text":"Burley","italic":false}'},CustomModelData:417651}}}

#   Add stored uses of trade to villager
execute if score @s merchantIsFisherman matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:417651}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


#   FLETCHER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run scoreboard players set @s merchantIsFletcher 1

#   Add trade to villager
execute if score @s merchantIsFletcher matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:2,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Gravel Brush","color":"white","italic":false}'},CustomModelData:127156}},priceMultiplier:0.08f}

#   Add stored uses of trade to villager
execute if score @s merchantIsFletcher matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:127156}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Setup durability text
#  Set a sign's text for use with the tag.display.Lore NBT
execute if score @s merchantIsFletcher matches 1 if score gravelBrushDurability merchantConfig matches ..0 run scoreboard players set gravelBrushDurability merchantConfig 1
execute if score @s merchantIsFletcher matches 1 run data modify block -30000000 -64 1603 Text1 set value '["",{"text":"Durability: ","color":"white","italic": false},{"score":{"name":"gravelBrushDurability","objective":"merchantConfig"},"color":"white","italic": false},{"text":"/","color":"white","italic": false},{"score":{"name":"gravelBrushDurability","objective":"merchantConfig"},"color":"white","italic": false}]'
#  Append the string from the sign to the item's `tag.display.Lore` NBT
execute if score @s merchantIsFletcher matches 1 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:127156}}}].sell.tag.display.Lore append from block -30000000 -64 1603 Text1


#   LEATHERWORKER

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run scoreboard players set @s merchantIsLeatherworker 1

#   Add trade to villager
execute if score @s merchantIsLeatherworker matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:10b},sell:{id:"minecraft:bundle",Count:1b},priceMultiplier:0.04f}

#   Add stored uses of trade to villager
execute if score @s merchantIsLeatherworker matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:bundle",Count:1b}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


#   LIBRARIAN

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run scoreboard players set @s merchantIsLibrarian 1

#   Run loot table for random trade if the 'merchantRandomisedTradeId' score of the villager is 0
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 0 store result score @s merchantRandomisedTradeId run loot spawn ~ ~ ~ loot merchantpug:random/librarian_rng

#   The Big Catch (Random Trade 1)
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"Happy fishin\' anglers! Today we\'re coverin a new alternative to fishin\', and we ain\'t talkin buckets.\\n\\nThat\'s right, get ready to expand your tackle box with the newest addition of burley! This here bait is meant for those lazy fishers out there."}','{"text":"Just throw some into some water, and watch as fish literally leap out just to eat some of this stuff.\\n\\nJust make sure you have a net ready to scoop them up.\\n\\nBe sure to stay subscribed to our services,"}','{"text":"as next week\'s story covers how the legendary fishermen wrestled a 7ft tall lobster and won."}'],title:"The Big Catch",author:"Jon B. Arnackle"}}}
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"The Big Catch",author:"Jon B. Arnackle"}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   VCP-1204 (Random Trade 2)
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 2 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:written_book",Count:1b,tag:{pages:['["",{"text":"Item #:","bold":true},{"text":" VCP 1204\\n\\n","color":"reset"},{"text":"Object Class:","bold":true},{"text":" Euclid\\n\\n","color":"reset"},{"text":"Special Containment Procedures:","bold":true},{"text":" Artifact is to be held by a Shepherd personnel and given to nobody else.\\n\\nAny shepherd that is to give up the object","color":"reset"}]','["",{"text":"for some emeralds is to become V-Class personnel, the buyer must be brought in for questioning and have the item confiscated from them.\\n\\n"},{"text":"Description: ","bold":true},{"text":"VCP-1204 is a set of shears, coated in a golden substance. It is able to shear anything that","color":"reset"}]','{"text":"it touches, seemingly leaving it unharmed. \\n\\nThe object creates an instance of VCP-1204-2 whenever it shears something, what this instance is depends on what it shears. Anything that has recently been sheared becomes an instance of VCP-1204-3"}','{"text":"temporarily, which makes them emit a magical yellow essence and unable to be effected by the shears."}'],title:"VCP-1204",author:"VCP Foundation"}}}
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 2 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"VCP-1204",author:"VCP Foundation"}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Quick and Delicious (Random Trade 3)
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 3 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":" QUICK AND DELICIOUS \\u0020 \\u0020 by Ardon Mildew\\n------------------- Alright, I\'m gonna be honest here. We don\'t get paid enough to publish these cookbooks so I didn\'t really include that many recipes. I\'m just gonna talk about this condiment thing people keep putting on their food."}','{"text":" \\u0020 \\u0020 \\u0020 RECIPE 1\\n------------------- Minutes Serves Vegan \\u0020 \\u00200 \\u0020 \\u0020 \\u0020 \\u00201 \\u0020 \\u0020 \\u0020 \\u0020No\\n------------------- Ingredients:\\n \\u0020- Any food\\n \\u0020- Any condiment Example:\\nGet a little dried kelp, take your favourite condiments, and just sprinkle that all over. Oh yeah."}','{"text":"RECIPE 2\\n------------------- Minutes Serves Vegan\\n \\u00200 \\u0020 \\u0020 \\u0020 \\u00201 \\u0020 \\u0020 \\u0020 \\u0020???\\n------------------- Ingredients:\\n \\u0020- Any food\\n \\u0020- Parrot Macadamias I\'m going to be honest, I\'m not sure if this is edible. Are the shells edible? Are these things even made of parrots? I don\'t know."}'],title:"Quick and Delicious",author:"Ardon Mildew"}}}
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 3 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"Quick and Delicious",author:"Ardon Mildew"}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Anvil Polish Infomercial Script (Random Trade 4)
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 4 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:written_book",Count:1b,tag:{pages:['["",{"text":" \\u0020 ANVIL POLISH","bold":true},{"text":"\\n","color":"reset"},{"text":"Arnold Anville:","bold":true},{"text":" Hi, Arnold Anville here with Anvil Polish.\\n","color":"reset"},{"text":"Actor looks at camera and introduces himself.","italic":true},{"text":"\\n\\n","color":"reset"},{"text":"Arnold Anville: ","bold":true},{"text":"Slap it on your anvil and it\'ll become silky smooth.\\n\\n","color":"reset"},{"text":"Slap the anvil,","italic":true}]','["",{"text":"we won\'t be paying for any injuries.","italic":true},{"text":"\\n\\n","color":"reset"},{"text":"Arnold Anville: ","bold":true},{"text":"For just 18 emeralds, you can get some Anvil Polish for yourself.\\n\\n","color":"reset"},{"text":"Arnold Anville:","bold":true},{"text":" It even works underwater!\\n\\n","color":"reset"},{"text":"Show anvil polish working underwater.","italic":true}]','["",{"text":"Move shot to a horde of unpaid zombies.","underlined":true},{"text":"\\n","color":"reset"},{"text":"Arnold Anville:","bold":true},{"text":" To prove the power of Anvil Polish. I got myself into a horde of zombies!\\n\\n","color":"reset"},{"text":"Arnold Anville:","bold":true},{"text":" And proceeded to use anvil polish on my Anvil. Woohoo!\\n\\n","color":"reset"},{"text":"Cue outro.","italic":true}]'],title:"Anvil Polish Infomercial Script",author:"Smith Co."}}}
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 4 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"Anvil Polish Infomercial Script",author:"Smith Co."}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Dear Jon (Random Trade 5)
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 5 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:written_book",Count:1b,tag:{pages:['{"text":"Dear Jon,\\n\\nIt\'s been five and a half fortnights since your departure, and still, I yearn for you. I do hope your studies abroad go well, and that the knowledge that comes from it aids you greatly."}','{"text":"Although I do not quite understand the importance of these runes, I at least respect your investment in the little function they serve. You must respect my position too, as it is quite hard to believe that some curious rock has the ability to alter your visuals."}','{"text":"Hearing your stories about the colors and dust that appear when you utilize your tools with the strange disks does worry me, John. That\'s why I send you this letter, I am worried about you and your future. I think it is best for us to go our separate ways, as I worry I encourage your"}','{"text":"outlandish dreams unintentionally. Just know you will always be in my heart, and that there will be no man quite like you in my life.\\n\\nLove,\\nLiz"}'],title:"Dear Jon.",author:"Liz Cleric"}}}
execute if score @s merchantIsLibrarian matches 1 if score @s merchantRandomisedTradeId matches 5 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:written_book",tag:{title:"Dear Jon.",author:"Liz Cleric"}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


#   MASON

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run scoreboard players set @s merchantIsMason 1

#   Run loot table for random trade if the 'merchantRandomisedTradeId' score of the villager is 0
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 0 store result score @s merchantRandomisedTradeId run loot spawn ~ ~ ~ loot merchantpug:random/mason_rng

#   Terracotta Bag Warm (Random Trade 1)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Warm)","italic":false}'},CustomModelData:231248}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 1 store result entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231248}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Terracotta Bag Cool (Random Trade 2)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Cool)","italic":false}'},CustomModelData:231249}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 2 store result entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231249}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Terracotta Bag Shades (Random Trade 3)
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"Terracotta Bag (Cool)","italic":false}'},CustomModelData:231250}},priceMultiplier:0.02f}
execute if score @s merchantIsMason matches 1 if score @s merchantRandomisedTradeId matches 3 store result entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:231250}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses


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
execute if score @s merchantIsShepherd matches 1 run data modify block -30000000 -64 1603 Text1 set value '["",{"text":"Durability: ","color":"yellow","italic": false},{"score":{"name":"goldenShearsDurability","objective":"merchantConfig"},"color":"yellow","italic": false},{"text":"/","color":"yellow","italic": false},{"score":{"name":"goldenShearsDurability","objective":"merchantConfig"},"color":"yellow","italic": false}]'
#  Append the string from the sign to the item's `tag.display.Lore` NBT
execute if score @s merchantIsShepherd matches 1 run data modify entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:15641}}}].sell.tag.display.Lore append from block -30000000 -64 1603 Text1


#   SMITHS (ARMORER/TOOLSMITH/WEAPONSMITH)

#   Setup scoreboard
execute as @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run scoreboard players set @s merchantIsSmith 1
execute as @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run scoreboard players set @s merchantIsSmith 1

#   Add trade to villager
execute if score @s merchantIsSmith matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,buy:{id:"minecraft:emerald",Count:18b},sell:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"Anvil Polish","color":"white","italic":false}'},CustomModelData:156655}},priceMultiplier:0.08f}

#   Add stored uses of trade to villager
execute if score @s merchantIsSmith matches 1 run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:knowledge_book",tag:{CustomModelData:156655}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   WANDERING TRADER
#   Add trade to villager
execute as @s[type=wandering_trader] run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:4,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:nether_brick",Count:1b,tag:{display:{Name:'{"text":"Item Box","color":"white","italic":false}'},CustomModelData:415123}},priceMultiplier:0.05f}

#   Add stored uses of trade to villager
execute as @s[type=wandering_trader] run execute store result entity @s Offers.Recipes[{sell:{id:"minecraft:nether_brick",tag:{CustomModelData:415123}}}].uses int 1 run scoreboard players get @s merchantTraderTradeUses

#   Add tag that marks it as modified
tag @s add merchant.villager_modified

#   Reset profession detection scoreboards
scoreboard players reset @s merchantIsCartographer
scoreboard players reset @s merchantIsCleric
scoreboard players reset @s merchantIsLeatherworker
scoreboard players reset @s merchantIsLibrarian
scoreboard players reset @s merchantIsMason
scoreboard players reset @s merchantIsFisherman
scoreboard players reset @s merchantIsFletcher
scoreboard players reset @s merchantIsShepherd
scoreboard players reset @s merchantIsSmith