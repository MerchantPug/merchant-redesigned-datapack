#   Decrement the addedEmeralds score
scoreboard players remove #temp addedEmeralds 1

#   Add to emeralds score
scoreboard players add #temp emeralds 1

#  Recurse this function only if the score of the `addedEmeralds` score holder is 1 or greater
execute if score #temp addedEmeralds matches 1.. run function merchantpug:emerald_pouch/add_to_emeralds