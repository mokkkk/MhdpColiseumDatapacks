execute if entity @s[tag=aj.reus.root] run function animated_java:reus/zzzzzzzz/animations/land_damage_down_l/resume_as_root
execute if entity @s[tag=!aj.reus.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:reus/animations/land_damage_down_l/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]