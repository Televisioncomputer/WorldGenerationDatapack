
execute store result score Time Vars run time query gametime

execute as @a[scores={Settings=1..}] run function worldgen:settings

scoreboard players enable @a Settings

scoreboard players operation Tick1 Vars = Time Vars
scoreboard players operation Tick1 Vars %= 10 Vars
scoreboard players operation Tick2 Vars = Time Vars
scoreboard players operation Tick2 Vars %= 4 Vars

execute if score Tick1 Vars matches 1 if score WorldPreset Vars matches 0 run function worldgen:worldpresets/default
execute if score Tick1 Vars matches 1 if score WorldPreset Vars matches 1 run function worldgen:worldpresets/short
execute if score Tick1 Vars matches 1 if score WorldPreset Vars matches 2 run function worldgen:worldpresets/amplified
execute if score Tick1 Vars matches 1 if score WorldPreset Vars matches 3 run function worldgen:worldpresets/superflat
execute if score Tick1 Vars matches 1 if score WorldPreset Vars matches 4 run function worldgen:worldpresets/deep
execute if score Tick1 Vars matches 1 if score WorldPreset Vars matches 5 run function worldgen:worldpresets/crazy

execute if score GenerationEnabled Vars matches 1.. if score RenderSpeed Vars matches ..1 run function worldgen:renderdistance/renderslow
execute if score GenerationEnabled Vars matches 1.. if score RenderSpeed Vars matches 2 run function worldgen:renderdistance/rendermid
execute if score GenerationEnabled Vars matches 1.. if score RenderSpeed Vars matches 3 run function worldgen:renderdistance/renderfast
execute if score GenerationEnabled Vars matches 1.. if score RenderSpeed Vars matches 4 run function worldgen:renderdistance/renderveryfast
execute if score GenerationEnabled Vars matches 1.. if score RenderSpeed Vars matches 5.. run function worldgen:renderdistance/renderextreme