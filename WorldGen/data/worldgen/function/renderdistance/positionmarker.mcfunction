execute store result score TempX Vars run data get entity @s Pos[0]
execute store result score TempZ Vars run data get entity @s Pos[2]
scoreboard players operation TempX Vars /= 4 Vars
scoreboard players operation TempZ Vars /= 4 Vars
execute store result entity @s Pos[0] double 4.0 run scoreboard players get TempX Vars
execute store result entity @s Pos[2] double 4.0 run scoreboard players get TempZ Vars