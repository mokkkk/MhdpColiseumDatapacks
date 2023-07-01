function zzz_ranposu_internal:animations/down_flying/play_as_root
function zzz_ranposu_internal:animations/down_flying/tween_as_root
execute if score #tween_duration aj.i matches ..0 on passengers store result entity @s interpolation_duration int 1 run scoreboard players get $aj.default_interpolation_duration aj.i
scoreboard players reset #tween_duration aj.i