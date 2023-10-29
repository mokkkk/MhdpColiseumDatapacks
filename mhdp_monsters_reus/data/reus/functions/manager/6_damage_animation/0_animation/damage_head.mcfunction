#> ranposu:manager/6_damage_animation/0_animation/damage_head
#
# 青鳥竜 怯み処理 頭

# 回数カウント
    scoreboard players add #mhdp_ranposu_damage_count MhdpCore 1

# アニメーション遷移
    function ranposu:manager/1_change/0_stop/
    # 偶数回数の怯みの場合，大怯みを再生
        execute if entity @s[tag=!StateIsFlying] if score #mhdp_ranposu_damage_count MhdpCore matches ..1 run function animated_java:ranposu/animations/damage/play
        execute if entity @s[tag=!StateIsFlying] if score #mhdp_ranposu_damage_count MhdpCore matches 2.. run function animated_java:ranposu/animations/damage_down/play
        execute if score #mhdp_ranposu_damage_count MhdpCore matches 2.. run scoreboard players set #mhdp_ranposu_damage_count MhdpCore 0
    execute if entity @s[tag=StateIsFlying] run function animated_java:ranposu/animations/damage_flying/play
    tag @s remove StateIsFlying

# 部位破壊処理
    execute if entity @s[tag=!StateBreakHead] run function ranposu:manager/6_damage_animation/1_break/head

# スコアリセット
    scoreboard players operation #mhdp_ranposu_head_damage AsaMatrix = #mhdp_ranposu_head_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
