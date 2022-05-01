#> ioi-pi:tick
#
#@within
#   function ioi-pi:load
#   function ioi-pi:tick


#   Execute as all the marker entities that has the `ioi-pi.marker` tag
execute as @e[type = minecraft:marker, tag = ioi-pi.marker] at @s run function ioi-pi:impl/marker/tick


#   Loop this function
schedule function ioi-pi:tick 1t
