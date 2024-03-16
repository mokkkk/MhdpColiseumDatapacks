
# 一定範囲内にターゲットがいる場合，バックステップ
    execute if entity @e[tag=ReusAttackTarget,distance=..12] run tag @s add AnmBackStep
# それ以外の場合，ブレス
    execute if entity @s[tag=!AnmBackStep] run tag @s add AnmBreath
