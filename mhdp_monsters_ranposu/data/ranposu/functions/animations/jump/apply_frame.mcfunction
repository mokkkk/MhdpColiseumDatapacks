execute if entity @s[tag=aj.ranposu.root] run function zzz_ranposu_internal:animations/jump/apply_frame_as_root
execute if entity @s[tag=!aj.ranposu.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" ranposu:animations/jump/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]