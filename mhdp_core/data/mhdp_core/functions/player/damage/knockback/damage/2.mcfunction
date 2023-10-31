#> mhdp_core:player/damage/knockback/damage/2
#
# プレイヤーノックバック開始処理

# 浮遊エフェクト付与
    tp @s @s
    scoreboard players set $strength delta.api.launch 16000
    execute facing entity @s feet rotated ~ -23 run function delta:api/launch_looking

# ノックバック中タグ・スコア付与
    tag @s add MdhpKnockback
    scoreboard players set @s MhdpTKnockback 3

# 武器の行動中断処理
    execute if entity @s[tag=!PlyGuardSuccess] run function mhdp_weapons:core/interruption/
