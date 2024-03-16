#> reus:manager/6_damage_animation/0_animation/damage_stun
#
# 火竜 怯み処理 スタン

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function reus:manager/1_change/0_stop/
    execute if entity @s[tag=!StateIsFlying] run function reus:manager/1_change/2_animations/damage_down
    execute if entity @s[tag=StateIsFlying] run function animated_java:reus/animations/fly_damage/play
    tag @s remove StateIsFlying

# スタン開始
    # Stateタグ付与
        tag @s add StateIsStun

# スタン耐性増加
    scoreboard players set #mhdp_const_temp AsaMatrix 150
    scoreboard players operation #mhdp_reus_stun_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_stun_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
    scoreboard players reset #mhdp_const_temp AsaMatrix

# スコアリセット
    scoreboard players operation #mhdp_reus_stun_damage AsaMatrix = #mhdp_reus_stun_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
