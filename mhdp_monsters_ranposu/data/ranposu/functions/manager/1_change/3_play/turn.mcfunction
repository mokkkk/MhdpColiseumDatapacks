#> ranposu:manager/1_change/3_play/turn
#
# 青鳥竜 アニメーション遷移処理 再生開始 軸合わせ

# 軸合わせ左
    # execute if entity @s[tag=AnmTurnL] run
    tag @s remove AnmTurnL 

# 軸合わせ右
    # execute if entity @s[tag=AnmTurnR] run 
    tag @s remove AnmTurnR

# 終了
    tag @s add AppliedAnm
