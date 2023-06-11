#> ranposu:manager/1_change/3_play/other
#
# 青鳥竜 アニメーション遷移処理 再生開始 その他

# 噛みつき
    execute if entity @s[tag=AnmBite] run function ranposu:animations/bite/play
    tag @s remove AnmBite

# ひっかき
    execute if entity @s[tag=AnmClaw] run function ranposu:animations/claw/play
    tag @s remove AnmClaw

# 尻尾なぎはらい
    execute if entity @s[tag=AnmTailR] run function ranposu:animations/tail_right/play
    tag @s remove AnmTailR
    execute if entity @s[tag=AnmTailL] run function ranposu:animations/tail_left/play
    tag @s remove AnmTailL

# 前進ひっかき
    execute if entity @s[tag=AnmMoveClaw] run function ranposu:animations/move_claw/play
    tag @s remove AnmMoveClaw

# とびかかり
    execute if entity @s[tag=AnmJump] run function ranposu:animations/jump/play
    tag @s remove AnmJump

# タックル
    execute if entity @s[tag=AnmTackle] run function ranposu:animations/tackle/play
    tag @s remove AnmTackle

# ステップとびかかり
    execute if entity @s[tag=AnmStepJumpL] run function ranposu:animations/step_jump_left/play
    tag @s remove AnmStepJumpL
    execute if entity @s[tag=AnmStepJumpR] run function ranposu:animations/step_jump_right/play
    tag @s remove AnmStepJumpR

# 終了
    tag @s add AppliedAnm
