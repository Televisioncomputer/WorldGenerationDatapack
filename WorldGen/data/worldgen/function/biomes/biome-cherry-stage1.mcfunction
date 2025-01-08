execute store result score Temp2 Vars run data get entity @s Pos[1]
fill ~ ~-1 ~ ~ ~-4 ~ dirt
$fillbiome ~ ~ ~ ~ $(SeaLevel) ~ ocean
$fillbiome ~ 319 ~ ~ $(SeaLevel) ~ cherry_grove
$execute if score Temp2 Vars matches $(SeaLevel).. run setblock ~ ~ ~ grass_block
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~-2 ~-5 ~-2 ~2 ~-4 ~2 sandstone replace dirt
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~-2 ~-5 ~-2 ~2 ~-4 ~2 sandstone replace stone
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~ ~ ~ ~ ~-3 ~ sand
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~3 ~2 ~-2 ~1 ~-2 air replace short_grass
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~4 ~2 ~-2 ~1 ~-2 air replace tall_grass
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~3 ~2 ~-2 ~1 ~-2 air replace #minecraft:flowers
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~1 ~2 ~-2 ~-3 ~-2 sand replace dirt
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~1 ~2 ~-2 ~-3 ~-2 sand replace grass_block
fill ~ ~-5 ~ ~ 0 ~ stone
$fill ~ $(SeaLevel) ~ ~ 0 ~ water replace air
$fill ~ $(SeaLevel) ~ ~ 0 ~ water replace water


function worldgen:caves/caves
setblock ~ 0 ~ bedrock