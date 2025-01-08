execute store result score Temp Vars run data get entity @s Pos[1]
execute store result score Temp2 Vars run data get entity @s Pos[1]

execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = BiomeStoneNoiseSteps Vars
function worldgen:calculatecubic
scoreboard players operation Temp Vars = NoiseOutput Vars
scoreboard players operation Temp Vars *= 2 Vars

execute if score Temp Vars < RealWorldHeight Vars run fill ~ ~ ~ ~ ~-4 ~ stone
execute if score Temp Vars >= RealWorldHeight Vars run fill ~ ~-1 ~ ~ ~-4 ~ dirt
execute if score Temp Vars >= RealWorldHeight Vars run setblock ~ ~ ~ grass_block

$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~ ~ ~ ~ ~-3 ~ gravel
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~4 ~2 ~-2 ~1 ~-2 air replace tall_grass
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~3 ~2 ~-2 ~1 ~-2 air replace #minecraft:flowers
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~1 ~2 ~-2 ~-3 ~-2 gravel replace dirt
$execute if score Temp2 Vars matches ..$(SeaLevel) run fill ~2 ~1 ~2 ~-2 ~-3 ~-2 gravel replace grass_block
$fillbiome ~ ~ ~ ~ $(SeaLevel) ~ cold_ocean
$fillbiome ~ 319 ~ ~ $(SeaLevel) ~ windswept_hills
fill ~ ~-5 ~ ~ 0 ~ stone
$fill ~ $(SeaLevel) ~ ~ 0 ~ water replace air
$fill ~ $(SeaLevel) ~ ~ 0 ~ water replace water


function worldgen:caves/caves
setblock ~ 0 ~ bedrock