#> mhdp_weapons:weapon/great_sword/8_edge/change_charge
#
# 大剣：ハンティングエッジ → 溜め

# タグ消去
    tag @s remove WpnGsword8Edge
    tag @s remove PlyDrawAttack

# 浮遊エフェクト付与
    scoreboard players set $strength delta.api.launch 12000
    execute rotated ~ -90 run function delta:api/launch_looking

# 行動開始
    function mhdp_weapons:weapon/great_sword/2_charge/start
