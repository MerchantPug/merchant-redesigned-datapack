#> ioi-pi:impl/marker/tick
#
#   > Tick the marker entity that has the `ioi-pi.marker` tag
#
#@within function ioi-pi:tick


#   If the marker entity doesn't have a base block, kill it
execute unless block ~ ~ ~ #ioi-pi:block_containers run kill @s
