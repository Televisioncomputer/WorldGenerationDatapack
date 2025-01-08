
# Gamerules
gamerule maxCommandChainLength 999999999
gamerule commandModificationBlockLimit 999999999

# Scoreboards
scoreboard objectives add Vars dummy
scoreboard objectives add Settings trigger
scoreboard players operation WorldPreset Vars = WorldPreset Vars
execute if score Seed Vars matches 0 run scoreboard players set Seed Vars 1

execute if score WorldPreset Vars matches 0 run function worldgen:worldpresets/default
execute if score WorldPreset Vars matches 1 run function worldgen:worldpresets/short
execute if score WorldPreset Vars matches 2 run function worldgen:worldpresets/amplified
execute if score WorldPreset Vars matches 3 run function worldgen:worldpresets/superflat
execute if score WorldPreset Vars matches 4 run function worldgen:worldpresets/deep
execute if score WorldPreset Vars matches 5 run function worldgen:worldpresets/crazy

# Helpful Vars
scoreboard players set -1 Vars -1
scoreboard players set 2 Vars 2
scoreboard players set 3 Vars 3
scoreboard players set 4 Vars 4
scoreboard players set 5 Vars 5
scoreboard players set 6 Vars 6
scoreboard players set 7 Vars 7
scoreboard players set 8 Vars 8
scoreboard players set 9 Vars 9
scoreboard players set 10 Vars 10
scoreboard players set 20 Vars 20
scoreboard players set 100 Vars 100


# Vars
scoreboard players set X Vars 0
scoreboard players set Z Vars 0
scoreboard players set Temp Vars 0
scoreboard players set Temp2 Vars 0
scoreboard players set TempX Vars 0
scoreboard players set TempZ Vars 0
scoreboard players set BiomeTemperature Vars 0
scoreboard players set BiomeHumidity Vars 0
scoreboard players operation GenerationEnabled Vars = GenerationEnabled Vars

scoreboard players set Noise-- Vars 0
scoreboard players set Noise+- Vars 0
scoreboard players set Noise-+ Vars 0
scoreboard players set Noise++ Vars 0
scoreboard players set RandNumber Vars 1
scoreboard players set RandNumber2 Vars 1

tellraw @a ["",{"text":"Tip: don't forget to use "},{"text":"\"/trigger Settings\"","color":"green"}]
