execute store result score Temp2 Vars run data get entity @s Pos[1]
fill ~ ~-1 ~ ~ ~-4 ~ mud
$fillbiome ~ ~ ~ ~ $(SeaLevel) ~ warm_ocean
$fillbiome ~ 319 ~ ~ $(SeaLevel) ~ mangrove_swamp
$execute if score Temp2 Vars matches $(SeaLevel).. run setblock ~ ~ ~ mud
fill ~ ~-5 ~ ~ 0 ~ stone
$fill ~ $(SeaLevel) ~ ~ 0 ~ water replace air
$fill ~ $(SeaLevel) ~ ~ 0 ~ water replace water


function worldgen:caves/caves
setblock ~ 0 ~ bedrock