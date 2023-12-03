#> mhdp_core:player/damage/knockback/
#
# ノックバックを受けているときの処理

# タイマー減算
    scoreboard players remove @s MhdpTKnockback 1

# 終了
    execute if entity @s[scores={MhdpTKnockback=..0}] run function mhdp_core:player/damage/knockback/end
