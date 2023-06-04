#> ranposu:manager/1_change/3_play/other
#
# 青鳥竜 アニメーション遷移処理 再生開始 その他

# 噛みつき
    execute if entity @s[tag=AnmBite] run function ranposu:animations/bite/play
    tag @s remove AnmBite

# ひっかき
    execute if entity @s[tag=AnmClaw] run function ranposu:animations/claw/play
    tag @s remove AnmClaw

# 終了
    tag @s add AppliedAnm
