#> reus:manager/6_damage_animation/0_animation/damage_leg
#
# 火竜 怯み処理 脚

# アニメーション遷移
    function reus:manager/1_change/0_stop/
    execute if entity @s[tag=!StateIsFlying] run function reus:manager/1_change/2_animations/damage_down
    execute if entity @s[tag=StateIsFlying] run function animated_java:reus/animations/fly_damage/play
    tag @s remove StateIsFlying

# スコアリセット
    scoreboard players operation #mhdp_reus_leg_damage AsaMatrix = #mhdp_reus_leg_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
