
execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = CaveNoiseSteps1 Vars
function worldgen:calculatecubic2
scoreboard players operation CaveNoise Vars = NoiseOutput Vars
#tellraw @a "------------------------------------"
#tellraw @a {"score":{"name":"CaveNoise","objective":"Vars"}}
execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = CaveNoiseSteps2 Vars
function worldgen:calculatecubic2
scoreboard players operation CaveNoise Vars += NoiseOutput Vars
#tellraw @a {"score":{"name":"CaveNoise","objective":"Vars"}}
scoreboard players operation CaveNoise Vars /= 2 Vars
#tellraw @a {"score":{"name":"CaveNoise","objective":"Vars"}}
scoreboard players operation CaveNoise Vars -= CaveChance Vars
#tellraw @a {"score":{"name":"CaveNoise","objective":"Vars"}}
scoreboard players operation CaveNoise Vars *= 2 Vars

#execute if score CaveNoise Vars matches 0.. run return run say FAILED

scoreboard players operation CaveNoise Vars *= CaveMax Vars
scoreboard players operation CaveNoise Vars /= 100 Vars
#scoreboard players operation CaveNoise Vars *= -1 Vars

#execute if score CaveNoise Vars matches ..0 run scoreboard players set CaveNoise Vars 0
#tellraw @a {"score":{"name":"CaveNoise","objective":"Vars"}}

execute store result storage worldgen CaveY double 1.0 run scoreboard players get CaveNoise Vars

execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = CaveNoiseSteps3 Vars
function worldgen:calculatecubic2
scoreboard players operation NoiseOutput Vars *= CaveMaxSize Vars
scoreboard players operation NoiseOutput Vars /= 100 Vars

execute if score NoiseOutput Vars matches ..0 run return 0
execute store result storage worldgen CaveSize double 1.0 run scoreboard players get NoiseOutput Vars

function worldgen:caves/placecave with storage minecraft:worldgen
fill ~ 0 ~ ~ 10 ~ lava replace air
