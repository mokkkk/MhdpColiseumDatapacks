#> ranposu:manager/1_change/
#
# 青鳥竜 アニメーション遷移処理

# アニメーション再生停止
    function ranposu:manager/1_change/0_stop/

# フェーズ変更用行動回数カウント
    # Ignore

# ターゲットリセット
    execute if entity @s[tag=!StateAfterMove] run function ranposu:manager/1_change/target

# 強制
    # tag @s add AnmClaw

# 行動
    execute if entity @a[tag=RanposuAttackTarget] run function ranposu:manager/1_change/act

# 軸合わせ
    execute unless predicate ranposu:animation/is_execute_turn_animation_tags run function ranposu:manager/1_change/2_animations/turn

# 怒りカウント
    execute if entity @s[tag=StateIsAnger] unless entity @a[tag=RanposuAttackTarget] run scoreboard players add #mhdp_ranposu_anger_count AsaMatrix 1
    execute if entity @s[tag=StateIsAnger] if entity @a[tag=RanposuAttackTarget] run scoreboard players add #mhdp_ranposu_anger_count AsaMatrix 2
    execute if entity @s[tag=StateIsAnger] if score #mhdp_ranposu_anger_count AsaMatrix matches 30.. run function ranposu:manager/6_damage_animation/2_anger/end

# アニメーション再生開始
    function ranposu:manager/1_change/3_play/

# 念のためStateタグを消去
    tag @s remove StateIsStun
    function ranposu:manager/7_model/head_blink_end

# 終了
    tag @s remove ChangeAnm
