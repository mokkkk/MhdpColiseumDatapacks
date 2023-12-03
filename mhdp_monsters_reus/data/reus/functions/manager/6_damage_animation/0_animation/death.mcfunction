#> reus:manager/6_damage_animation/0_animation/death
#
# 火竜 死亡処理

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function reus:manager/1_change/0_stop/
    execute unless entity @s[tag=StateIsFlying] run function animated_java:reus/animations/land_death/play
    execute if entity @s[tag=StateIsFlying] run function animated_java:reus/animations/fly_death/play

# 当たり判定削除
    function reus:manager/2_health/kill_health

# 討伐時処理
    function mhdp_core:phase/3_quest/check/death
