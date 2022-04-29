scoreboard objectives add newDamage dummy

function ioi-pi:impl/modify_inventory/setup/mainhand

execute store result score #temp newDamage run data get block -30000000 0 1602 Items[{id:"minecraft:shears",tag:{CustomModelData:15641}}].tag.merchant.damage
tellraw @a {"score":{"name": "#temp","objective": "newDamage"}}

scoreboard players add #temp newDamage 1
tellraw @a {"score":{"name": "#temp","objective": "newDamage"}}

execute store result block -30000000 0 1602 Items[{id:"minecraft:shears",tag:{CustomModelData:15641}}].tag.merchant.damage int 1 run scoreboard players get #temp newDamage

#   Handle if the item breaks or not
execute if score #temp newDamage >= goldenShearsDurability merchantConfig run scoreboard players set #broken newDamage 1

execute if score #broken newDamage matches 1 run playsound minecraft:entity.item.break player @a ~ ~ ~ 0.85 1.4
execute if score #broken newDamage matches 1 run playsound minecraft:block.glass.break player @a ~ ~ ~ 1.0 1.3
execute if score #broken newDamage matches 1 anchored eyes positioned ^ ^ ^0.25 run particle minecraft:item minecraft:shears{CustomModelData:15641} ~ ~ ~ 0.25 0 0.25 0 5

function ioi-pi:impl/modify_inventory/apply/mainhand
execute if score #broken newDamage matches 1 run item replace entity @s weapon.mainhand with air

#   Clean up
function ioi-pi:impl/clear_shulker_box
scoreboard players reset #broken newDamage