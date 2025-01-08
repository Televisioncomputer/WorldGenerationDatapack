

execute store result score TempX Vars run data get entity @s Pos[0]
execute store result score TempZ Vars run data get entity @s Pos[2]
function worldgen:calculatenoise2

scoreboard players operation NoiseOutput Vars /= RandDiv2 Vars
execute store result score Temp Vars run data get entity @s Pos[1]

execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 2000..5000 run place feature seagrass_short
execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 1001..1999 run place feature kelp
execute if score Temp Vars <= SeaLevel Vars run return 0

# Forest
execute if score NoiseOutput Vars matches 0..300 if block ~ ~ ~ #dirt run setblock ~ ~1 ~ short_grass
execute if score NoiseOutput Vars matches 1001..1010 if block ~ ~ ~ #dirt run place feature patch_taiga_grass
execute if score NoiseOutput Vars matches 1101..1105 if block ~ ~ ~ #dirt run place feature flower_default
execute if score NoiseOutput Vars matches 2000..2005 if block ~ ~ ~ #dirt unless block ~ ~3 ~1 #logs unless block ~1 ~3 ~1 #logs unless block ~1 ~3 ~ #logs unless block ~1 ~3 ~-1 #logs unless block ~ ~3 ~-1 #logs unless block ~-1 ~3 ~-1 #logs unless block ~-1 ~3 ~ #logs unless block ~-1 ~3 ~1 #logs run setblock ~ ~1 ~ air
execute if score NoiseOutput Vars matches 2000..2005 if block ~ ~ ~ #dirt unless block ~ ~3 ~1 #logs unless block ~1 ~3 ~1 #logs unless block ~1 ~3 ~ #logs unless block ~1 ~3 ~-1 #logs unless block ~ ~3 ~-1 #logs unless block ~-1 ~3 ~-1 #logs unless block ~-1 ~3 ~ #logs unless block ~-1 ~3 ~1 #logs run place feature trees_taiga ~ ~1 ~
execute if score NoiseOutput Vars matches 2000..2005 if block ~ ~ ~ #dirt if block ~ ~1 ~ air run fill ~ ~ ~ ~ ~ ~ snow replace air