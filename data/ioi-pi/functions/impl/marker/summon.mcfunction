#> ioi-pi:impl/marker/summon
#
#   > Summon a marker entity to mark a container
#
#   - called by: `ioi-pi:mark_interacted_containers`
#
#@private


summon minecraft:marker ~ ~ ~ {Tags: ["ioi-pi.marker", "ioi-pi.marker.init"]}

# execute as @e[tag = ioi-pi.marker.init] run say Hello!

tag @e remove ioi-pi.marker.init
