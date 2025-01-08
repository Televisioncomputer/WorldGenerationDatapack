execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = Noise1Steps Vars
function worldgen:calculatecubic
scoreboard players operation TempNoise1 Vars = NoiseOutput Vars
scoreboard players operation Temp2 Vars = NoiseOutput Vars
scoreboard players operation Temp2 Vars *= 4 Vars

execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = Noise2Steps Vars
function worldgen:calculatecubic
scoreboard players operation Temp2 Vars += NoiseOutput Vars

#execute store result score X Vars run data get entity @s Pos[0]
#execute store result score Z Vars run data get entity @s Pos[2]

#scoreboard players operation NoiseSteps Vars = Noise3Steps Vars
#function worldgen:calculatecubic
#scoreboard players operation Temp2 Vars += NoiseOutput Vars

execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = Noise4Steps Vars
function worldgen:calculatecubic
scoreboard players operation Temp2 Vars += NoiseOutput Vars

execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = Noise5Steps Vars
function worldgen:calculatecubic
scoreboard players operation Temp2 Vars += NoiseOutput Vars

scoreboard players operation Temp2 Vars /= 7 Vars
scoreboard players operation Temp2 Vars += SeaLevel Vars
scoreboard players operation Temp2 Vars -= SeaDepth Vars

execute store result entity @s Pos[1] double 1.0 run scoreboard players get Temp2 Vars
