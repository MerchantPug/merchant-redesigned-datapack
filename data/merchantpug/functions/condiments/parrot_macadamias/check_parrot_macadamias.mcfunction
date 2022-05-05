execute if score on_modify ioi-pi matches 1 if entity @s[tag = merchant.apply_parrot_macadamias] run function merchantpug:condiments/parrot_macadamias/on_modify/apply_parrot_macadamias

execute if score after_modifying ioi-pi matches 1 if entity @s[tag=merchant.apply_parrot_macadamias] run function merchantpug:condiments/parrot_macadamias/after_modify/give_remainder_food