#> mhdp_core:player/damage/knockback/voice/1_
#
# プレイヤーノックバック開始処理

# 下を向く
    tp @s @s
    tp @s ~ ~ ~ ~ 90

# 武器の行動中断処理
    function mhdp_weapons:core/interruption/

# 移動速度低下を付与
    effect give @s slowness 3 3 true
