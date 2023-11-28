#> reus:manager/1_change/6_phase_change/land_to_fly
#
# 火竜 地上行動 地上→飛行

# フェーズ変更
    scoreboard players set #mhdp_reus_phase_count MhdpCore 0

# ターゲットが近くにおり，一定確率でBjb
    execute if entity @e[tag=ReusAttackTarget,distance=..12] run tag @s add AnmBjb
# それ以外は通常飛行
    execute if entity @s[tag=!AnmBjb] run tag @s add AnmFlyStart

say land to fly