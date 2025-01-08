execute store result score Temp2 Vars run data get entity @s Pos[1]
$fillbiome ~ ~ ~ ~ $(SeaLevel) ~ warm_ocean
$fillbiome ~ 319 ~ ~ $(SeaLevel) ~ desert
fill ~ ~ ~ ~ ~-4 ~ sand
fill ~ ~-4 ~ ~ ~-3 ~ sandstone
fill ~ ~-5 ~ ~ 0 ~ stone
$fill ~ $(SeaLevel) ~ ~ 0 ~ water replace air
$fill ~ $(SeaLevel) ~ ~ 0 ~ water replace water


function worldgen:caves/caves
setblock ~ 0 ~ bedrock