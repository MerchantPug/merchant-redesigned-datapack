execute if score on_modify ioi-pi matches 1 if entity @s[tag = merchant.apply_glow_salt] run function merchantpug:condiments/glow_salt/on_modify/apply_glow_salt

execute if score after_modifying ioi-pi matches 1 if entity @s[tag=merchant.apply_glow_salt] run function merchantpug:condiments/glow_salt/after_modify/give_remainder_glow_salt