#> mhdp_weapons:weapon/great_sword/4_tackle/start
#
# 大剣：タックル開始

# アニメーションタイマーリセット
    scoreboard players set @s MhdpWeaponTimer 0

# タグ更新
    tag @s add WpnGswordTackle

# 溜め段階タグ消去
    tag @s remove WpnGswordCharge1
    tag @s remove WpnGswordCharge2
    tag @s remove WpnGswordCharge3

# ハイパーアーマー開始
    tag @s add PlyArmorHyper

# 移動処理
    tp @s @s
    scoreboard players set $strength delta.api.launch 3000
    execute rotated ~ 0 run function delta:api/launch_looking

# 移動速度リセット
    effect clear @s speed

# スタミナ消費
    scoreboard players remove @s MhdpStamina 200

# 終了
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Start] remove Start
    data remove storage mhdp_core:temp Temp

say タックル