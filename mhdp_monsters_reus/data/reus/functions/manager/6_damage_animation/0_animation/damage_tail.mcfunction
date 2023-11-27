#> reus:manager/6_damage_animation/0_animation/damage_tail
#
# 青鳥竜 怯み処理 尻尾

# 回数カウント
    scoreboard players add #mhdp_reus_damage_count MhdpCore 1

# アニメーション遷移
    function reus:manager/1_change/0_stop/
    execute if entity @s[tag=!StateIsFlying,tag=!StateBreakTail] if data storage mhdp_core:temp Temp.WeaponDamage{Type:1} run function animated_java:reus/animations/land_damage_tail/play
    execute if entity @s[tag=!aj.reus.animation.land_damage_tail] run function animated_java:reus/animations/land_damage_body/play
    execute if entity @s[tag=aj.reus.animation.land_damage_body] facing entity @p feet run tp @s ~ ~ ~ ~ 0
    execute if entity @s[tag=StateIsFlying] run function animated_java:reus/animations/fly_damage/play
    tag @s remove StateIsFlying

# 部位破壊処理
    execute if entity @s[tag=!StateBreakTail] if data storage mhdp_core:temp Temp.WeaponDamage{Type:1} run function reus:manager/6_damage_animation/1_break/tail

# スコアリセット
    scoreboard players operation #mhdp_reus_tail_damage AsaMatrix = #mhdp_reus_tail_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
