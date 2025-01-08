


execute store result score TempX Vars run data get entity @s Pos[0]
execute store result score TempZ Vars run data get entity @s Pos[2]
function worldgen:calculatenoise2

scoreboard players operation NoiseOutput Vars /= RandDiv2 Vars
execute store result score Temp Vars run data get entity @s Pos[1]
execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 2000..5000 run place feature seagrass_short
execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 1001..1100 run place feature warm_ocean_vegetation
execute if score Temp Vars <= SeaLevel Vars run return 0
# Forest
execute if score NoiseOutput Vars matches 0..1000 if block ~ ~ ~ #dirt run setblock ~ ~1 ~ short_grass
execute if score NoiseOutput Vars matches 1001..1020 if block ~ ~ ~ #dirt run setblock ~ ~1 ~ dead_bush
execute if score NoiseOutput Vars matches 1201..1210 if block ~ ~ ~ #dirt run place feature clay_pool_with_dripleaves
execute if score NoiseOutput Vars matches 2000..3100 if block ~ ~ ~ #dirt run place feature tall_mangrove ~ ~ ~
execute if score NoiseOutput Vars matches 2000..3100 if block ~ ~ ~ #dirt run place feature tall_mangrove ~4 ~ ~
execute if score NoiseOutput Vars matches 2000..3100 if block ~ ~ ~ #dirt run place feature tall_mangrove ~ ~ ~4
execute if score NoiseOutput Vars matches 2000..3100 if block ~ ~ ~ #dirt run place feature tall_mangrove ~-4 ~ ~
execute if score NoiseOutput Vars matches 2000..3100 if block ~ ~ ~ #dirt run place feature tall_mangrove ~ ~ ~-4