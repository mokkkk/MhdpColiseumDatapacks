execute if entity @s[tag=aj.dino.root] run function animated_java:dino/zzzzzzzz/animations/jump_tail_r_less_frame_2/tween_play_as_root
execute if entity @s[tag=!aj.dino.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:dino/animations/jump_tail_r_less_frame_2/tween_play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]