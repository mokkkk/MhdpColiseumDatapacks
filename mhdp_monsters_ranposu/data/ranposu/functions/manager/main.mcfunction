#> ranposu:manager/main
#
# 青鳥竜メイン処理

# 地面埋まり対策
    execute unless block ~ ~ ~ #asa_animator:no_collision unless block ~ ~1 ~ #asa_animator:no_collision unless block ~ ~2 ~ #asa_animator:no_collision unless block ~ ~3 ~ #asa_animator:no_collision at @s run function asa_animator:general/back

# アニメーション遷移
    execute if entity @s[tag=ChangeAnm] run function ranposu:manager/1_change/

# アニメーション処理
    execute at @s run function ranposu:manager/5_animation/

# 当たり判定処理
    # execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/manager/2_health/

# 怒り時パーティクル
    # execute if entity @s[tag=IsAnger] at @e[type=armor_stand,tag=ReusParts,tag=HeadU] run particle smoke ^ ^1.3 ^0.7 0.3 0.3 0.3 0.01 1


function ranposu:manager/99_test/check_temp_tag