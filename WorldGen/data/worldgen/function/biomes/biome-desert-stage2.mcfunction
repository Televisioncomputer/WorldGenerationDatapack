


execute store result score TempX Vars run data get entity @s Pos[0]
execute store result score TempZ Vars run data get entity @s Pos[2]
function worldgen:calculatenoise2

scoreboard players operation NoiseOutput Vars /= RandDiv2 Vars
execute store result score Temp Vars run data get entity @s Pos[1]
execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 100..5000 run place feature seagrass_short
execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 1001..1100 run place feature warm_ocean_vegetation ~2 ~ ~
execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 1001..1100 run place feature warm_ocean_vegetation ~ ~ ~2
execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 1001..1100 run place feature warm_ocean_vegetation ~-2 ~ ~
execute if score Temp Vars <= SeaLevel Vars run execute if score NoiseOutput Vars matches 1001..1100 run place feature warm_ocean_vegetation ~ ~ ~-2
execute if score Temp Vars <= SeaLevel Vars run return 0

# Desert
execute if score NoiseOutput Vars matches 1101..1200 if block ~ ~ ~ sand run setblock ~ ~1 ~ dead_bush
execute if score NoiseOutput Vars matches 2000..2200 run place feature patch_cactus ~ ~1 ~