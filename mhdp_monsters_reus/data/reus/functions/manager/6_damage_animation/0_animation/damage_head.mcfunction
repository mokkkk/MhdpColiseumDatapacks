#> reus:manager/6_damage_animation/0_animation/damage_head
#
# 火竜 怯み処理 頭

# 回数カウント
    scoreboard players add #mhdp_reus_damage_count MhdpCore 1

# アニメーション遷移
    function reus:manager/1_change/0_stop/
    execute if entity @s[tag=!StateIsFlying] run function animated_java:reus/animations/land_damage_head/play
    execute if entity @s[tag=StateIsFlying] run function animated_java:reus/animations/fly_damage/play
    tag @s remove StateIsFlying

# 部位破壊処理
    execute if entity @s[tag=!StateBreakHead] run function reus:manager/6_damage_animation/1_break/head

# スコアリセット
    scoreboard players operation #mhdp_reus_head_damage AsaMatrix = #mhdp_reus_head_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
