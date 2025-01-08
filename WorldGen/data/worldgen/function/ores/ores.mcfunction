
execute store result score TempX Vars run data get entity @s Pos[0]
execute store result score TempZ Vars run data get entity @s Pos[2]
function worldgen:calculatenoise2
scoreboard players operation RandNumber2 Vars = NoiseOutput Vars
execute store result score OreRayStepCount Vars run data get entity @s Pos[1]
function worldgen:ores/oreray with storage minecraft:worldgen