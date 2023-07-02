#> ranposu:manager/1_change/act
#
# 青鳥竜 アニメーション遷移処理

# 初遭遇時
    execute if entity @s[tag=!StateIsFirstContact] run function ranposu:manager/1_change/1_first_contact/

# 移動後
    execute if entity @s[tag=StateAfterMove] run function ranposu:manager/1_change/5_after_move/

# 位置関係取得
    function ranposu:manager/1_change/check_pos

# 遷移
    # 地上
        execute if predicate ranposu:animation/is_stay_animation_tags run function ranposu:manager/1_change/4_landing/

# 終了
    tag @s remove IsForward
    tag @s remove IsBack
