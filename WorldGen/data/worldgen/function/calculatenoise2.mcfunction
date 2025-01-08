scoreboard players operation NoiseOutput Vars = TempX Vars
scoreboard players operation NoiseOutput Vars -= XOffset Vars
scoreboard players operation NoiseOutput Vars *= XMulti Vars
scoreboard players operation Temp Vars = TempZ Vars
scoreboard players operation Temp Vars -= ZOffset Vars
scoreboard players operation Temp Vars *= ZMulti Vars
scoreboard players operation NoiseOutput Vars *= Temp Vars
scoreboard players operation NoiseOutput Vars *= Seed Vars

scoreboard players operation NoiseOutput Vars *= RandMul2 Vars
scoreboard players operation NoiseOutput Vars += RandAdd2 Vars
scoreboard players operation NoiseOutput Vars %= RandMod2 Vars