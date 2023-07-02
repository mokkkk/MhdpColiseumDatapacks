#> ranposu:manager/6_damage_animation/0_animation/death
#
# 青鳥竜 死亡処理

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function ranposu:manager/1_change/0_stop/
    execute unless entity @s[tag=StateIsFlying] run function ranposu:animations/death/play
    execute if entity @s[tag=StateIsFlying] run function ranposu:animations/death/play

# 当たり判定削除
    function ranposu:manager/2_health/kill_health

# 討伐時処理
    function mhdp_core:phase/3_quest/check/death
