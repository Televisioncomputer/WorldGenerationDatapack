summon marker ~0 0 ~0 {Tags:["Chunk"]} 
summon marker ~0 0 ~1 {Tags:["Chunk"]} 
summon marker ~1 0 ~0 {Tags:["Chunk"]} 
summon marker ~1 0 ~1 {Tags:["Chunk"]} 

execute as @e[type=marker,tag=Chunk] at @s run function worldgen:movemarkers
execute as @e[type=marker,tag=Chunk] at @s run function worldgen:biomes/biome
execute as @e[type=marker,tag=Chunk] at @s run function worldgen:ores/ores

#execute as @e[type=marker,tag=Chunk] at @s run function worldgen:biomes/biome-snowyplains-stage1 with storage minecraft:worldgen
#execute as @e[type=marker,tag=Chunk,sort=random] at @s run function worldgen:biomes/biome-snowyplains-stage2

kill @e[type=marker,tag=Chunk]