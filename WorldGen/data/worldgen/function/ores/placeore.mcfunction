function worldgen:nextrandom2
scoreboard players operation Temp Vars = RandNumber2 Vars
scoreboard players operation Temp Vars /= OreCoEfficient Vars

#$say Placed $(ore)

$execute if score Temp Vars matches 0..5 run function worldgen:ores/forms/form1 {ore:"$(ore)"}

$execute if score Temp Vars matches 6..15 run function worldgen:ores/forms/form2 {ore:"$(ore)"}

$execute if score Temp Vars matches 16..25 run function worldgen:ores/forms/form3 {ore:"$(ore)"}

$execute if score Temp Vars matches 26..35 run function worldgen:ores/forms/form4 {ore:"$(ore)"}

$execute if score Temp Vars matches 36..45 run function worldgen:ores/forms/form5 {ore:"$(ore)"}

$execute if score Temp Vars matches 46..50 run function worldgen:ores/forms/form6 {ore:"$(ore)"}

$execute if score Temp Vars matches 51..55 run function worldgen:ores/forms/form7 {ore:"$(ore)"}

$execute if score Temp Vars matches 56..58 run function worldgen:ores/forms/form8 {ore:"$(ore)"}

$execute if score Temp Vars matches 59..69 run function worldgen:ores/forms/form9 {ore:"$(ore)"}

$execute if score Temp Vars matches 70..96 run function worldgen:ores/forms/form10 {ore:"$(ore)"}

$execute if score Temp Vars matches 97..100 run function worldgen:ores/forms/form11 {ore:"$(ore)"}

scoreboard players set Temp Vars 2147483647