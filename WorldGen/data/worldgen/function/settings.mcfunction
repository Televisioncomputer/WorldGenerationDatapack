

execute if score @s Settings matches 2 run scoreboard players add WorldPreset Vars 1
execute if score @s Settings matches 3 run scoreboard players add RenderSpeed Vars 1
execute if score @s Settings matches 4 run scoreboard players add RenderDistance Vars 1
execute if score @s Settings matches 5 run scoreboard players add GenerationEnabled Vars 1


execute if score WorldPreset Vars matches 6.. run scoreboard players set WorldPreset Vars 0
execute if score RenderSpeed Vars matches 6.. run scoreboard players set RenderSpeed Vars 1
execute if score RenderDistance Vars matches 9.. run scoreboard players set RenderDistance Vars 1
execute if score GenerationEnabled Vars matches 2.. run scoreboard players set GenerationEnabled Vars 0

execute if score @s Settings matches 2.. run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n "}

tellraw @a {"text":"---- \u0020World Generation Settings \u0020----","color":"green"}
tellraw @a {"text":"|","color":"#7D401C"}
tellraw @a ["",{"text":"|","color":"#7D401C"},{"text":" Seed: "},{"text":"[","color":"green"},{"score":{"name":"Seed","objective":"Vars"},"color":"green"},{"text":"]","color":"green"}]
tellraw @a ["",{"text":"|","color":"#7D401C"},{"text":" "},{"text":"[Randomize Seed]","color":"green","clickEvent":{"action":"run_command","value":"/function worldgen:randomizeseed"}},{"text":" \u0020"},{"text":"[Set Seed]","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players set Seed Vars "}}]
tellraw @a {"text":"|","color":"#7D401C"}

tellraw @a ["",{"text":"| ","color":"#723a19"},{"text":"Generation Type","color":"white","hoverEvent":{"action":"show_text","contents":"What kind of World would you like to generate"}}]

execute if score WorldPreset Vars matches 0 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#683417"},{"text":"[ Default ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger Settings set 2"},"hoverEvent":{"action":"show_text","contents":"Normal Minecraft Overworld Behavior"}}]
execute if score WorldPreset Vars matches 1 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#683417"},{"text":"[ Short ]","color":"#9fffa4","clickEvent":{"action":"run_command","value":"/trigger Settings set 2"},"hoverEvent":{"action":"show_text","contents":"a Shorter Minecraft world that is great for slower computers"}}]
execute if score WorldPreset Vars matches 2 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#683417"},{"text":"[ Amplified ]","color":"#ff2600","clickEvent":{"action":"run_command","value":"/trigger Settings set 2"},"hoverEvent":{"action":"show_text","contents":"a HUGE Minecraft world that is NOT good for slower computers"}}]
execute if score WorldPreset Vars matches 3 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#683417"},{"text":"[ Super Flat ]","color":"#b0ffa9","clickEvent":{"action":"run_command","value":"/trigger Settings set 2"},"hoverEvent":{"action":"show_text","contents":"Flat and Good for super slow computers"}}]
execute if score WorldPreset Vars matches 4 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#683417"},{"text":"[ Deep ]","color":"#a70000","clickEvent":{"action":"run_command","value":"/trigger Settings set 2"},"hoverEvent":{"action":"show_text","contents":"It may seem normal, but once you hit F3, you will know what you're dealing with. . ."}}]
execute if score WorldPreset Vars matches 5 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#683417"},{"text":"[ Crazy ]","color":"#ff00dd","clickEvent":{"action":"run_command","value":"/trigger Settings set 2"},"hoverEvent":{"action":"show_text","contents":"Just Don't. . ."}}]


tellraw @a {"text":"|","color":"#693517"}
tellraw @a ["",{"text":"| ","color":"#b1b1b1"},{"text":"Speed","color":"white","hoverEvent":{"action":"show_text","contents":"How fast the Datapack renders the world"}}]

execute if score RenderSpeed Vars matches 1 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#a7a7a7"},{"text":"[ Slow ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger Settings set 3"},"hoverEvent":{"action":"show_text","contents":"An ok speed that is good enough to play with"}}]
execute if score RenderSpeed Vars matches 2 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#a7a7a7"},{"text":"[ Normal ]","color":"#fffb00","clickEvent":{"action":"run_command","value":"/trigger Settings set 3"},"hoverEvent":{"action":"show_text","contents":"A bit faster speed that is enjoyable"}}]
execute if score RenderSpeed Vars matches 3 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#a7a7a7"},{"text":"[ Fast ]","color":"#ff9900","clickEvent":{"action":"run_command","value":"/trigger Settings set 3"},"hoverEvent":{"action":"show_text","contents":"Fast, but not the fastest"}}]
execute if score RenderSpeed Vars matches 4 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#a7a7a7"},{"text":"[ Very Fast ]","color":"#ff0000","clickEvent":{"action":"run_command","value":"/trigger Settings set 3"},"hoverEvent":{"action":"show_text","contents":"This is Crazy Fast, but we can go even further"}}]
execute if score RenderSpeed Vars matches 5 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#a7a7a7"},{"text":"[ Extreme ]","color":"#ff00dd","clickEvent":{"action":"run_command","value":"/trigger Settings set 3"},"hoverEvent":{"action":"show_text","contents":"Suffer. . ."}}]


tellraw @a {"text":"|","color":"#a0a0a0"}
tellraw @a ["",{"text":"| ","color":"#979797"},{"text":"Render Distance","color":"white","hoverEvent":{"action":"show_text","contents":"How far the Datapack will try to render"}}]

execute if score RenderDistance Vars matches 1 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#8b8b8b"},{"text":"[ 1 ]","color":"#00ff15","clickEvent":{"action":"run_command","value":"/trigger Settings set 4"},"hoverEvent":{"action":"show_text","contents":"very short"}}]
execute if score RenderDistance Vars matches 2 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#8b8b8b"},{"text":"[ 2 ]","color":"#d0ff00","clickEvent":{"action":"run_command","value":"/trigger Settings set 4"},"hoverEvent":{"action":"show_text","contents":"short"}}]
execute if score RenderDistance Vars matches 3 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#8b8b8b"},{"text":"[ 3 ]","color":"#eeff00","clickEvent":{"action":"run_command","value":"/trigger Settings set 4"},"hoverEvent":{"action":"show_text","contents":"kinda short"}}]
execute if score RenderDistance Vars matches 4 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#8b8b8b"},{"text":"[ 4 ]","color":"#ffee00","clickEvent":{"action":"run_command","value":"/trigger Settings set 4"},"hoverEvent":{"action":"show_text","contents":"a tad bit short"}}]
execute if score RenderDistance Vars matches 5 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#8b8b8b"},{"text":"[ 5 ]","color":"#ffd000","clickEvent":{"action":"run_command","value":"/trigger Settings set 4"},"hoverEvent":{"action":"show_text","contents":"almost normal"}}]
execute if score RenderDistance Vars matches 6 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#8b8b8b"},{"text":"[ 6 ]","color":"#ffa600","clickEvent":{"action":"run_command","value":"/trigger Settings set 4"},"hoverEvent":{"action":"show_text","contents":"kinda normal"}}]
execute if score RenderDistance Vars matches 7 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#8b8b8b"},{"text":"[ 7 ]","color":"#ff8800","clickEvent":{"action":"run_command","value":"/trigger Settings set 4"},"hoverEvent":{"action":"show_text","contents":"well within acceptable bounds"}}]
execute if score RenderDistance Vars matches 8 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#8b8b8b"},{"text":"[ 8 ]","color":"#ff0000","clickEvent":{"action":"run_command","value":"/trigger Settings set 4"},"hoverEvent":{"action":"show_text","contents":"normal"}}]



tellraw @a {"text":"|","color":"#868686"}
execute if score GenerationEnabled Vars matches 0 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#6e6e6e"},{"text":"[Generation Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/trigger Settings set 5"},"hoverEvent":{"action":"show_text","contents":"World Generation is currently running"}}]
execute if score GenerationEnabled Vars matches 1 run tellraw @a ["",{"text":"| \u0020 \u0020","color":"#6e6e6e"},{"text":"[Generation Enabled]","color":"green","clickEvent":{"action":"run_command","value":"/trigger Settings set 5"},"hoverEvent":{"action":"show_text","contents":"World Generation is currently running"}}]
tellraw @a {"text":"|","color":"#5f5f5f"}
tellraw @a {"text":"--------------------------------","color":"#4d4d4d"}
scoreboard players set @s Settings 0
