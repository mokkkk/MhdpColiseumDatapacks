
# 左右確認
execute facing entity @p feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right] run function animated_java:reus/animations/land_damage_down_l/play
execute unless entity @s[tag=Right] run function animated_java:reus/animations/land_damage_down_r/play

tag @s remove Right