#> reus:manager/1_change/act
#
# 火竜 アニメーション遷移処理

# 初遭遇時
    execute if entity @s[tag=!StateIsFirstContact] run function reus:manager/1_change/1_first_contact/

# 移動後
    execute if entity @s[tag=StateAfterMove] run function reus:manager/1_change/5_after_move/

# 位置関係取得
    function reus:manager/1_change/check_pos

# 遷移
    # 地上
        execute if predicate reus:animation/is_stay_animation_tags run function reus:manager/1_change/4_landing/

# 終了
    tag @s remove IsForward
    tag @s remove IsBack
