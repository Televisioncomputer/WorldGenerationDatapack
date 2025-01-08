# World Params
scoreboard players operation Seed Vars = Seed Vars
scoreboard players set WorldHeight Vars 16
scoreboard players set SeaLevel Vars 6
scoreboard players set SeaDepth Vars 2
scoreboard players operation RealWorldHeight Vars = WorldHeight Vars
scoreboard players operation RealWorldHeight Vars -= SeaLevel Vars
scoreboard players operation RealWorldHeight Vars += SeaDepth Vars
execute if score RenderDistance Vars matches ..0 run scoreboard players set RenderDistance Vars 1
scoreboard players operation RenderDistance Vars = RenderDistance Vars
execute if score RenderSpeed Vars matches ..0 run scoreboard players set RenderSpeed Vars 1
scoreboard players operation RenderSpeed Vars = RenderSpeed Vars

# Noise Params
scoreboard players set NoiseOutput Vars 0
scoreboard players set NoiseSteps Vars 32
scoreboard players set Noise1Steps Vars 800
scoreboard players set Noise2Steps Vars 422
scoreboard players set Noise3Steps Vars 224
scoreboard players set Noise4Steps Vars 212
scoreboard players set Noise5Steps Vars 40
scoreboard players set BiomeTemperatureNoiseSteps Vars 844
scoreboard players set BiomeHumidityNoiseSteps Vars 802
scoreboard players set BiomeStoneNoiseSteps Vars 30
scoreboard players set RandAdd Vars 74
scoreboard players set RandMul Vars 75
scoreboard players set RandMod Vars 65537
scoreboard players set RandDiv Vars 655
scoreboard players set RandAdd2 Vars 12820163
scoreboard players set RandMul2 Vars 16598013
scoreboard players set RandMod2 Vars 16777216
scoreboard players set RandDiv2 Vars 1677
scoreboard players set XOffset Vars 512
scoreboard players set ZOffset Vars 23
scoreboard players set XMulti Vars 23
scoreboard players set ZMulti Vars 24
scoreboard players operation WorldHeightCoEfficient Vars = RandMod Vars
scoreboard players operation WorldHeightCoEfficient Vars /= RealWorldHeight Vars
scoreboard players operation BiomeCoEfficient Vars = WorldHeight Vars
scoreboard players operation BiomeCoEfficient Vars /= 6 Vars

scoreboard players set OreRaySteps Vars 4
scoreboard players set OreRayStepCount Vars 0
scoreboard players operation OreCoEfficient Vars = RandMod2 Vars
scoreboard players operation OreCoEfficient Vars /= 100 Vars
scoreboard players operation OreCoEfficient Vars /= 4 Vars

scoreboard players set CoalHeight Vars 100
scoreboard players set CoalChance Vars 16

scoreboard players set IronHeight Vars 90
scoreboard players set IronChance Vars 12

scoreboard players set GoldHeight Vars 60
scoreboard players set GoldChance Vars 2

scoreboard players set CopperHeight Vars 100
scoreboard players set CopperChance Vars 15

scoreboard players set RedstoneHeight Vars 40
scoreboard players set RedstoneChance Vars 2

scoreboard players set LapisHeight Vars 50
scoreboard players set LapisChance Vars 2

scoreboard players set DiamondHeight Vars 20
scoreboard players set DiamondChance Vars 2

scoreboard players set EmeraldHeight Vars 50
scoreboard players set EmeraldChance Vars 1

scoreboard players set LavaHeight Vars 25
scoreboard players set LavaChance Vars 1

scoreboard players operation CoalHeight Vars *= WorldHeight Vars
scoreboard players operation CoalHeight Vars /= 100 Vars

scoreboard players operation IronHeight Vars *= WorldHeight Vars
scoreboard players operation IronHeight Vars /= 100 Vars

scoreboard players operation GoldHeight Vars *= WorldHeight Vars
scoreboard players operation GoldHeight Vars /= 100 Vars

scoreboard players operation CopperHeight Vars *= WorldHeight Vars
scoreboard players operation CopperHeight Vars /= 100 Vars

scoreboard players operation RedstoneHeight Vars *= WorldHeight Vars
scoreboard players operation RedstoneHeight Vars /= 100 Vars

scoreboard players operation LapisHeight Vars *= WorldHeight Vars
scoreboard players operation LapisHeight Vars /= 100 Vars

scoreboard players operation DiamondHeight Vars *= WorldHeight Vars
scoreboard players operation DiamondHeight Vars /= 100 Vars

scoreboard players operation EmeraldHeight Vars *= WorldHeight Vars
scoreboard players operation EmeraldHeight Vars /= 100 Vars

scoreboard players operation LavaHeight Vars *= WorldHeight Vars
scoreboard players operation LavaHeight Vars /= 100 Vars

scoreboard players set CaveChance Vars 0
scoreboard players set CaveMax Vars 50
scoreboard players set CaveMaxSize Vars 24
scoreboard players set CaveNoiseSteps1 Vars 120
scoreboard players set CaveNoiseSteps2 Vars 70
scoreboard players set CaveNoiseSteps3 Vars 30
scoreboard players set CaveNoise Vars 0

scoreboard players operation CaveMax Vars *= WorldHeight Vars
scoreboard players operation CaveMax Vars /= 100 Vars

# Storage
execute store result storage worldgen SeaLevel double 1.0 run scoreboard players get SeaLevel Vars
execute store result storage worldgen CaveSize double 1.0 run scoreboard players get CaveSize Vars
execute store result storage worldgen CaveY double 1.0 run scoreboard players get CaveNoise Vars
execute store result storage worldgen OreRaySteps double 1.0 run scoreboard players get OreRaySteps Vars