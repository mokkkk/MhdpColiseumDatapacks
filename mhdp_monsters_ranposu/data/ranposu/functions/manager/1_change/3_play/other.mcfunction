#> ranposu:manager/1_change/3_play/other
#
# 青鳥竜 アニメーション遷移処理 再生開始 その他

# 威嚇
    execute if entity @s[tag=AnmVoice] run function ranposu:animations/voice/play
    tag @s remove AnmVoice

# 怒り状態移行
    execute if entity @s[tag=AnmAnger] run function ranposu:animations/anger/play
    tag @s remove AnmAnger

# バックステップ
    execute if entity @s[tag=AnmStepBack] run function ranposu:animations/step_back/play
    tag @s remove AnmStepBack

# 移動
    execute if entity @s[tag=AnmMove] run function ranposu:animations/move/play
    tag @s remove AnmMove

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

# 怯み
    execute if entity @s[tag=AnmDamage] run function ranposu:animations/damage/play
    tag @s remove AnmDamage
    
# 大怯み（ダウン）
    execute if entity @s[tag=AnmDamageDown] run function ranposu:animations/damage_down/play
    tag @s remove AnmDamageDown

# 空中怯み
    execute if entity @s[tag=AnmDamageFlying] run function ranposu:animations/damage_down/play
    tag @s remove AnmDamageFlying

# ダウン中もがき
    execute if entity @s[tag=AnmDown] run function ranposu:animations/down/play
    tag @s remove AnmDown

# ダウン終了
    execute if entity @s[tag=AnmDownEnd] run function ranposu:animations/down_end/play
    tag @s remove AnmDownEnd
    
# 討伐
    execute if entity @s[tag=AnmDeath] run function ranposu:animations/death/play
    tag @s remove AnmDeath

# 終了
    tag @s add AppliedAnm
