#> ranposu:manager/1_change/
#
# 青鳥竜 アニメーション遷移処理

# アニメーション再生停止
    function ranposu:manager/1_change/0_stop/

# フェーズ変更用行動回数カウント
    # scoreboard players add #mhdp_reus_actcount_phase AsaMatrix 1

# ターゲットリセット
    function ranposu:manager/1_change/target

# 強制
    tag @s add AnmTailL
    # function asa_animator:reus/manager/1_change/1_animations/fbreath

# 行動
    # execute if entity @a[tag=ReusAttackTarget] run function asa_animator:reus/manager/1_change/act

# 軸合わせ
    # execute unless predicate asa_animator:reus/turn run function asa_animator:reus/manager/1_change/1_animations/turn

# 怒りカウント
    # execute if entity @s[tag=IsAnger] unless entity @a[tag=ReusAttackTarget] run scoreboard players add #mhdp_reus_anger_count AsaMatrix 1
    # execute if entity @s[tag=IsAnger] if entity @a[tag=ReusAttackTarget] run scoreboard players add #mhdp_reus_anger_count AsaMatrix 2
    # execute if entity @s[tag=IsAnger] if score #mhdp_reus_anger_count AsaMatrix matches 30.. run function asa_animator:reus/manager/3_damage/2_anger/end

# アニメーション再生開始
    function ranposu:manager/1_change/3_play/

# 終了
    tag @s remove ChangeAnm
