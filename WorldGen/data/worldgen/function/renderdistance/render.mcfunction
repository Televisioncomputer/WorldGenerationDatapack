summon marker ~ 0 ~ {Tags:["StarterChunk"]}

execute as @e[type=marker,tag=StarterChunk] run function worldgen:renderdistance/positionmarker

execute as @e[type=marker,tag=StarterChunk] at @s run function worldgen:renderdistance/renderdistance

kill @e[type=marker,tag=StarterChunk]