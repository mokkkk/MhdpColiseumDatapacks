#> reus:manager/1_change/act
#
# 火竜 アニメーション遷移処理

# 初遭遇時
    execute if entity @s[tag=!StateIsFirstContact] run function reus:manager/1_change/1_first_contact/

# 移動後
    # Ignore

# 位置関係取得
    function reus:manager/1_change/check_pos

# フェーズ変更用行動回数カウント
    scoreboard players add #mhdp_reus_phase_count MhdpCore 1

# 遷移
    # 地上→空中
        execute if entity @s[tag=!StateIsFlying] if score #mhdp_reus_phase_count MhdpCore matches 7.. if predicate reus:animation/is_stay_animation_tags run function reus:manager/1_change/6_phase_change/land_to_fly
    # 地上
        execute if entity @s[tag=!StateIsFlying] if score #mhdp_reus_phase_count MhdpCore matches ..6 if predicate reus:animation/is_stay_animation_tags run function reus:manager/1_change/4_landing/
    # 空中→地上
        execute if entity @s[tag=StateIsFlying] if score #mhdp_reus_phase_count MhdpCore matches 6.. if predicate reus:animation/is_stay_animation_tags run function reus:manager/1_change/6_phase_change/fly_to_land
        execute if entity @s[tag=StateIsFlying] if score #mhdp_reus_phase_count MhdpCore matches 3.. if predicate asa_animator:random/050 if predicate reus:animation/is_stay_animation_tags run function reus:manager/1_change/6_phase_change/fly_to_land
    # 空中
        execute if entity @s[tag=StateIsFlying] if score #mhdp_reus_phase_count MhdpCore matches ..5 if predicate reus:animation/is_stay_animation_tags run function reus:manager/1_change/5_flying/
    
# 終了
    tag @s remove IsForward
    tag @s remove IsBack
