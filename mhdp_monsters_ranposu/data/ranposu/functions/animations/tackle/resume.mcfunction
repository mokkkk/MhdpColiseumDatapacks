execute if entity @s[tag=aj.ranposu.root] run function zzz_ranposu_internal:animations/tackle/resume_as_root
execute if entity @s[tag=!aj.ranposu.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" ranposu:animations/tackle/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]