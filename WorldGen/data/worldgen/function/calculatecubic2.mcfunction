
scoreboard players operation TempX Vars = X Vars
scoreboard players operation TempZ Vars = Z Vars
scoreboard players operation TempX Vars /= NoiseSteps Vars
scoreboard players operation TempZ Vars /= NoiseSteps Vars

function worldgen:calculatenoise
scoreboard players operation NoiseOutput Vars /= RandDiv Vars
scoreboard players operation Noise-- Vars = NoiseOutput Vars

scoreboard players add TempX Vars 1

function worldgen:calculatenoise
scoreboard players operation NoiseOutput Vars /= RandDiv Vars
scoreboard players operation Noise+- Vars = NoiseOutput Vars

scoreboard players add TempZ Vars 1

function worldgen:calculatenoise
scoreboard players operation NoiseOutput Vars /= RandDiv Vars
scoreboard players operation Noise++ Vars = NoiseOutput Vars

scoreboard players remove TempX Vars 1

function worldgen:calculatenoise
scoreboard players operation NoiseOutput Vars /= RandDiv Vars
scoreboard players operation Noise-+ Vars = NoiseOutput Vars

scoreboard players remove TempZ Vars 1

#tellraw @a ["",{"text":"------------------\nX: "},{"score":{"name":"X","objective":"Vars"}},{"text":"\nZ: "},{"score":{"name":"Z","objective":"Vars"}},{"text":"\nNoise--: "},{"score":{"name":"Noise--","objective":"Vars"}},{"text":"\nNoise+-: "},{"score":{"name":"Noise+-","objective":"Vars"}},{"text":"\nNoise-+: "},{"score":{"name":"Noise-+","objective":"Vars"}},{"text":"\nNoise++: "},{"score":{"name":"Noise++","objective":"Vars"}}]

scoreboard players operation TempX Vars *= NoiseSteps Vars
scoreboard players operation TempZ Vars *= NoiseSteps Vars

scoreboard players operation X Vars -= TempX Vars
scoreboard players operation Z Vars -= TempZ Vars

scoreboard players operation TempX Vars = NoiseSteps Vars
scoreboard players operation TempX Vars /= 2 Vars

#tellraw @a ["",{"text":"\nNoiseSteps: "},{"score":{"name":"NoiseSteps","objective":"Vars"}}]

scoreboard players operation Temp Vars = X Vars
execute if score X Vars < TempX Vars run function worldgen:cubic/cubicn
execute if score X Vars >= TempX Vars run function worldgen:cubic/cubicp
scoreboard players operation X Vars = Temp Vars

scoreboard players operation Temp Vars = Z Vars
execute if score Z Vars < TempX Vars run function worldgen:cubic/cubicn
execute if score Z Vars >= TempX Vars run function worldgen:cubic/cubicp
scoreboard players operation Z Vars = Temp Vars

#if X < 0.5 then Y = 2X^2
#if X >= 0.5 then Y = -2(X-1)^2+1

#tellraw @a ["",{"text":"\nNoise++ X: "},{"score":{"name":"X","objective":"Vars"}},{"text":" Z: "},{"score":{"name":"Z","objective":"Vars"}}]

scoreboard players operation Noise++ Vars *= X Vars
scoreboard players operation Noise++ Vars *= Z Vars

scoreboard players operation X Vars -= NoiseSteps Vars
scoreboard players operation X Vars *= -1 Vars
scoreboard players remove X Vars 1

#tellraw @a ["",{"text":"Noise-+ X: "},{"score":{"name":"X","objective":"Vars"}},{"text":" Z: "},{"score":{"name":"Z","objective":"Vars"}}]

scoreboard players operation Noise-+ Vars *= X Vars
scoreboard players operation Noise-+ Vars *= Z Vars

scoreboard players operation Z Vars -= NoiseSteps Vars
scoreboard players operation Z Vars *= -1 Vars
scoreboard players remove Z Vars 1

#tellraw @a ["",{"text":"Noise-- X: "},{"score":{"name":"X","objective":"Vars"}},{"text":" Z: "},{"score":{"name":"Z","objective":"Vars"}}]

scoreboard players operation Noise-- Vars *= X Vars
scoreboard players operation Noise-- Vars *= Z Vars

scoreboard players operation X Vars -= NoiseSteps Vars
scoreboard players operation X Vars *= -1 Vars
scoreboard players remove X Vars 1

scoreboard players operation Noise+- Vars *= X Vars
scoreboard players operation Noise+- Vars *= Z Vars

#tellraw @a ["",{"text":"\nNoise--: "},{"score":{"name":"Noise--","objective":"Vars"}},{"text":"\nNoise+-: "},{"score":{"name":"Noise+-","objective":"Vars"}},{"text":"\nNoise-+: "},{"score":{"name":"Noise-+","objective":"Vars"}},{"text":"\nNoise++: "},{"score":{"name":"Noise++","objective":"Vars"}}]


scoreboard players operation NoiseOutput Vars = Noise-- Vars
scoreboard players operation NoiseOutput Vars += Noise+- Vars
scoreboard players operation NoiseOutput Vars += Noise-+ Vars
scoreboard players operation NoiseOutput Vars += Noise++ Vars

#tellraw @a ["",{"text":"\nSum: "},{"score":{"name":"NoiseOutput","objective":"Vars"}}]


scoreboard players operation NoiseOutput Vars /= NoiseSteps Vars
scoreboard players operation NoiseOutput Vars /= NoiseSteps Vars

#tellraw @a ["",{"text":"Noise+- X: "},{"score":{"name":"X","objective":"Vars"}},{"text":" Z: "},{"score":{"name":"Z","objective":"Vars"}}]
#tellraw @a ["",{"text":"\nNoiseSteps: "},{"score":{"name":"NoiseSteps","objective":"Vars"}}]

execute if score NoiseOutput Vars matches ..-1 run scoreboard players operation NoiseOutput Vars *= -1 Vars

#tellraw @a ["",{"text":"Output: "},{"score":{"name":"NoiseOutput","objective":"Vars"}}]


