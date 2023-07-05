#> ranposu:manager/6_damage_animation/0_animation/damage_stun
#
# 青鳥竜 怯み処理 スタン

# アニメーション遷移
    scoreboard players set @s AsaMatrix 0
    function ranposu:manager/1_change/0_stop/
    execute if entity @s[tag=!StateIsFlying] run function ranposu:animations/damage_down/play
    execute if entity @s[tag=StateIsFlying] run function ranposu:animations/damage_flying/play
    tag @s remove StateIsFlying

# スタン開始
    # ダウン時間を調整
        scoreboard players set #mhdp_ranposu_down_count MhdpCore -4
        tag @s add InitAnmDown
    # Stateタグ付与
        tag @s add StateIsStun

# スタン耐性増加
    scoreboard players set #mhdp_const_temp AsaMatrix 150
    scoreboard players operation #mhdp_reus_stun_damage_max AsaMatrix *= #mhdp_const_temp AsaMatrix
    scoreboard players operation #mhdp_reus_stun_damage_max AsaMatrix /= #asam_const_100 AsaMatrix
    scoreboard players reset #mhdp_const_temp AsaMatrix

# スコアリセット
    scoreboard players operation #mhdp_ranposu_stun_damage AsaMatrix = #mhdp_ranposu_stun_damage_max AsaMatrix

# 演出
    playsound entity.item.break master @a ~ ~ ~ 2 0.5
