execute if entity @s[tag=aj.ranposu.root] run function zzz_ranposu_internal:animations/down/play_as_root
execute if entity @s[tag=!aj.ranposu.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" ranposu:animations/down/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]