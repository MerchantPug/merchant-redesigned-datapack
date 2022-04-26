#  Summon a new marker entity that will have a matching ID as the current entity you're executing as
summon marker ~ ~ ~ {Tags: ["merchant.villager_paired", "init"]}

scoreboard players operation @e[type = minecraft:marker, tag = init, limit = 1] merchantVillagerId = @s merchantVillagerId

tag @e remove init