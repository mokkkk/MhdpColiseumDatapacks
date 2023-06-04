#> ranposu:manager/1_change/0_stop/
#
# 青鳥竜 アニメーション停止処理

# 停止
    execute if entity @s[tag=aj.ranposu.animation.idle] run function zzz_ranposu_internal:animations/idle/stop_as_root
    execute if entity @s[tag=aj.ranposu.animation.bite] run function zzz_ranposu_internal:animations/bite/stop_as_root
    execute if entity @s[tag=aj.ranposu.animation.claw] run function zzz_ranposu_internal:animations/claw/stop_as_root
