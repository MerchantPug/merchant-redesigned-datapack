#> ioi-pi:impl/selected_item/get/container/process
#
#@within function ioi-pi:impl/selected_item/get/container


data modify storage ioi-pi:temp temp.items set from block ~ ~ ~ Items

execute if data storage ioi-pi:temp temp.items[{tag: {ioi-pi: {selected: 1b}}}] as @a[tag = ioi-pi.player] run function ioi-pi:impl/selected_item/modify


data modify block ~ ~ ~ Items set from storage ioi-pi:temp temp.items
