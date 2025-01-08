

execute store result score TempX Vars run data get entity @s Pos[0]
execute store result score TempZ Vars run data get entity @s Pos[2]
function worldgen:calculatenoise2

scoreboard players operation NoiseOutput Vars /= RandDiv2 Vars
execute store result score Temp Vars run data get entity @s Pos[1]

execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 100..5000 run place feature seagrass_short
execute if score Temp Vars <= SeaLevel Vars run return 0
# Forest
execute if score NoiseOutput Vars matches 0..1000 if block ~ ~ ~ #dirt run setblock ~ ~1 ~ short_grass
execute if score NoiseOutput Vars matches 1001..1020 if block ~ ~ ~ #dirt run place feature patch_tall_grass
execute if score NoiseOutput Vars matches 1101..1110 if block ~ ~ ~ #dirt run place feature huge_red_mushroom ~ ~1 ~
execute if score NoiseOutput Vars matches 1201..1210 if block ~ ~ ~ #dirt run place feature huge_brown_mushroom ~ ~1 ~
execute if score NoiseOutput Vars matches 2000..2500 if block ~ ~ ~ #dirt unless block ~ ~3 ~2 #logs unless block ~2 ~3 ~2 #logs unless block ~2 ~3 ~ #logs unless block ~2 ~3 ~-2 #logs unless block ~ ~3 ~-2 #logs unless block ~-2 ~3 ~-2 #logs unless block ~-2 ~3 ~ #logs unless block ~-2 ~3 ~2 #logs run place feature dark_oak ~ ~1 ~