
function worldgen:nextrandom2
scoreboard players operation Temp Vars = RandNumber2 Vars
scoreboard players operation Temp Vars /= OreCoEfficient Vars
scoreboard players operation Temp Vars -= CoalChance Vars
execute if score OreRayStepCount Vars <= CoalHeight Vars if score Temp Vars <= CoalChance Vars run function worldgen:ores/placeore {ore:"minecraft:coal_ore"}

scoreboard players operation Temp Vars -= CopperChance Vars
execute if score OreRayStepCount Vars <= CopperHeight Vars if score Temp Vars <= CopperChance Vars run function worldgen:ores/placeore {ore:"minecraft:copper_ore"}

scoreboard players operation Temp Vars -= IronChance Vars
execute if score OreRayStepCount Vars <= IronHeight Vars if score Temp Vars <= IronChance Vars run function worldgen:ores/placeore {ore:"minecraft:iron_ore"}

scoreboard players operation Temp Vars -= GoldChance Vars
execute if score OreRayStepCount Vars <= GoldHeight Vars if score Temp Vars <= GoldChance Vars run function worldgen:ores/placeore {ore:"minecraft:gold_ore"}

scoreboard players operation Temp Vars -= LapisChance Vars
execute if score OreRayStepCount Vars <= LapisHeight Vars if score Temp Vars <= LapisChance Vars run function worldgen:ores/placeore {ore:"minecraft:lapis_ore"}

scoreboard players operation Temp Vars -= RedstoneChance Vars
execute if score OreRayStepCount Vars <= RedstoneHeight Vars if score Temp Vars <= RedstoneChance Vars run function worldgen:ores/placeore {ore:"minecraft:redstone_ore"}

scoreboard players operation Temp Vars -= EmeraldChance Vars
execute if score OreRayStepCount Vars <= EmeraldHeight Vars if score Temp Vars <= EmeraldChance Vars run function worldgen:ores/placeore {ore:"minecraft:emerald_ore"}

scoreboard players operation Temp Vars -= DiamondChance Vars
execute if score OreRayStepCount Vars <= DiamondHeight Vars if score Temp Vars <= DiamondChance Vars run function worldgen:ores/placeore {ore:"minecraft:diamond_ore"}

scoreboard players operation Temp Vars -= LavaChance Vars
execute if score OreRayStepCount Vars <= LavaHeight Vars if score Temp Vars <= LavaChance Vars run place feature lake_lava

scoreboard players operation OreRayStepCount Vars -= OreRaySteps Vars

execute if score OreRayStepCount Vars matches ..0 run return 0
$execute positioned ~ ~-$(OreRaySteps) ~ run function worldgen:ores/oreray with storage minecraft:worldgen