#> reus:manager/1_change/
#
# 火竜 アニメーション遷移処理

# アニメーション再生停止
    function reus:manager/1_change/0_stop/

# フェーズ変更用行動回数カウント
    # Ignore

# ターゲットリセット
    execute if entity @s[tag=!StateAfterMove] run function reus:manager/1_change/target

# 強制
    # function reus:manager/1_change/2_animations/move
    # tag @s add AnmFlyBreathTriple
    # tp @s -71.5 66 100.5 0 0

# 行動
    # execute if entity @a[tag=ReusAttackTarget] run function reus:manager/1_change/act

# 軸合わせ
    # execute unless predicate reus:animation/is_execute_turn_animation_tags run function reus:manager/1_change/2_animations/turn

# 怒りカウント
    # execute if entity @s[tag=StateIsAnger] unless entity @a[tag=ReusAttackTarget] run scoreboard players add #mhdp_reus_anger_count AsaMatrix 1
    # execute if entity @s[tag=StateIsAnger] if entity @a[tag=ReusAttackTarget] run scoreboard players add #mhdp_reus_anger_count AsaMatrix 2
    # execute if entity @s[tag=StateIsAnger] if score #mhdp_reus_anger_count AsaMatrix matches 30.. run function reus:manager/6_damage_animation/2_anger/end

# アニメーション再生開始
    function reus:manager/1_change/3_play/

# 念のためStateタグを消去
    # tag @s remove StateIsStun
    # function reus:manager/7_model/head_blink_end

# 終了
    tag @s remove ChangeAnm
