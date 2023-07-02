#> ranposu:manager/main
#
# 青鳥竜メイン処理
#declare tag StateIsFirstContact 初遭遇時のアニメーションを再生したか
#declare tag StateAppliedAnm 現在tickアニメーション再生済
#declare tag StateIsAnger 怒り中
#declare tag StateIsFlying 空中
#declare tag StateIsStun スタン中
#declare tag StateBreakHead 部位破壊(頭)
#declare tag StateAfterMove 移動後

# 壁埋まり対策
    execute unless block ~ ~ ~ #asa_animator:no_collision unless block ~ ~1 ~ #asa_animator:no_collision unless block ~ ~2 ~ #asa_animator:no_collision unless block ~ ~3 ~ #asa_animator:no_collision at @s run function asa_animator:general/back

# アニメーション遷移
    execute if entity @s[tag=ChangeAnm] run function ranposu:manager/1_change/

# アニメーション処理
    execute at @s run function ranposu:manager/5_animation/

# 怒り時パーティクル
    execute if entity @s[tag=StateIsAnger] at @e[type=marker,tag=LctPosHead] run particle smoke ^ ^ ^0.5 0.25 0.25 0.25 0.01 1
