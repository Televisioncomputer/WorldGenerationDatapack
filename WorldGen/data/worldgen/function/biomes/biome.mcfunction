
execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = BiomeTemperatureNoiseSteps Vars
function worldgen:calculatecubic
scoreboard players operation BiomeTemperature Vars = NoiseOutput Vars
scoreboard players operation BiomeTemperature Vars /= BiomeCoEfficient Vars

execute store result score X Vars run data get entity @s Pos[0]
execute store result score Z Vars run data get entity @s Pos[2]

scoreboard players operation NoiseSteps Vars = BiomeHumidityNoiseSteps Vars
function worldgen:calculatecubic
scoreboard players operation BiomeHumidity Vars = NoiseOutput Vars
scoreboard players operation BiomeHumidity Vars /= BiomeCoEfficient Vars

scoreboard players operation TempNoise2 Vars = TempNoise1 Vars
scoreboard players operation TempNoise2 Vars /= 2 Vars
execute if score TempNoise2 Vars < SeaLevel Vars run scoreboard players remove BiomeTemperature Vars 1
execute if score TempNoise2 Vars >= SeaLevel Vars run scoreboard players add BiomeTemperature Vars 1




execute if score BiomeTemperature Vars matches 5.. run scoreboard players set BiomeTemperature Vars 4
execute if score BiomeHumidity Vars matches 5.. run scoreboard players set BiomeHumidity Vars 4
execute if score BiomeTemperature Vars matches ..-1 run scoreboard players set BiomeTemperature Vars 0
execute if score BiomeHumidity Vars matches ..1 run scoreboard players set BiomeHumidity Vars 0

#scoreboard players remove BiomeTemperature Vars 4
#scoreboard players operation BiomeTemperature Vars *= -1 Vars


# dumb
execute if score BiomeTemperature Vars matches 3 if score BiomeHumidity Vars matches 2 run function worldgen:biomes/biome-forest-stage1 with storage minecraft:worldgen

execute if score BiomeTemperature Vars matches 3 if score BiomeHumidity Vars matches 2 run return run function worldgen:biomes/biome-forest-stage2

execute if score BiomeTemperature Vars matches 2 if score BiomeHumidity Vars matches 2..3 run function worldgen:biomes/biome-forest-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 2 if score BiomeHumidity Vars matches 2..3 run return run function worldgen:biomes/biome-forest-stage2

execute if score BiomeTemperature Vars matches 3 if score BiomeHumidity Vars matches 3 run function worldgen:biomes/biome-cherry-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 3 if score BiomeHumidity Vars matches 3 run return run function worldgen:biomes/biome-cherry-stage2

execute if score BiomeTemperature Vars matches 3 if score BiomeHumidity Vars matches 4 run function worldgen:biomes/biome-swamp-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 3 if score BiomeHumidity Vars matches 4 run return run function worldgen:biomes/biome-swamp-stage2

execute if score BiomeTemperature Vars matches 4 if score BiomeHumidity Vars matches 2..4 run function worldgen:biomes/biome-swamp-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 4 if score BiomeHumidity Vars matches 2..4 run return run function worldgen:biomes/biome-swamp-stage2

execute if score BiomeTemperature Vars matches 1..2 if score BiomeHumidity Vars matches 4 run function worldgen:biomes/biome-darkkoakforest-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 1..2 if score BiomeHumidity Vars matches 4 run return run function worldgen:biomes/biome-darkkoakforest-stage2

execute if score BiomeTemperature Vars matches 0 if score BiomeHumidity Vars matches 4 run function worldgen:biomes/biome-snowyplains-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 0 if score BiomeHumidity Vars matches 4 run return run function worldgen:biomes/biome-snowyplains-stage2

execute if score BiomeTemperature Vars matches 0 if score BiomeHumidity Vars matches 2..3 run function worldgen:biomes/biome-spruce-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 0 if score BiomeHumidity Vars matches 2..3 run return run function worldgen:biomes/biome-spruce-stage2

execute if score BiomeTemperature Vars matches 2 if score BiomeHumidity Vars matches 1 run function worldgen:biomes/biome-spruce-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 2 if score BiomeHumidity Vars matches 1 run return run function worldgen:biomes/biome-spruce-stage2

execute if score BiomeTemperature Vars matches 1 if score BiomeHumidity Vars matches 2..3 run function worldgen:biomes/biome-spruce-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 1 if score BiomeHumidity Vars matches 2..3 run return run function worldgen:biomes/biome-spruce-stage2

execute if score BiomeTemperature Vars matches 1..2 if score BiomeHumidity Vars matches 1 run function worldgen:biomes/biome-plains-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 1..2 if score BiomeHumidity Vars matches 1 run return run function worldgen:biomes/biome-plains-stage2

execute if score BiomeTemperature Vars matches 0..1 if score BiomeHumidity Vars matches 0 run function worldgen:biomes/biome-stone-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 0..1 if score BiomeHumidity Vars matches 0 run return run function worldgen:biomes/biome-stone-stage2

execute if score BiomeTemperature Vars matches 0 if score BiomeHumidity Vars matches 1 run function worldgen:biomes/biome-stone-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 0 if score BiomeHumidity Vars matches 1 run return run function worldgen:biomes/biome-stone-stage2

execute if score BiomeTemperature Vars matches 2..4 if score BiomeHumidity Vars matches 0 run function worldgen:biomes/biome-desert-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 2..4 if score BiomeHumidity Vars matches 0 run return run function worldgen:biomes/biome-desert-stage2

execute if score BiomeTemperature Vars matches 3..4 if score BiomeHumidity Vars matches 1 run function worldgen:biomes/biome-acacia-stage1 with storage minecraft:worldgen
execute if score BiomeTemperature Vars matches 3..4 if score BiomeHumidity Vars matches 1 run return run function worldgen:biomes/biome-acacia-stage2

tellraw @a ["",{"text":"ERROR- ","color":"red"},{"text":"Temp: ","color":"white"},{"score":{"name":"BiomeTemperature","objective":"Vars"},"color":"white"},{"text":" Hum: ","color":"white"},{"score":{"name":"BiomeHumidity","objective":"Vars"},"color":"white"}]
