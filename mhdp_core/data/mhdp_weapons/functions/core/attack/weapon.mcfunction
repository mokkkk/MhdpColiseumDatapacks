#> mhdp_weapons:core/attack/weapon
#
# 各武器の直殴り処理実行

# 1：弓
    # execute if entity @s[tag=PlyWpnBow] run function mhdp_weapons:weapon/bow/96_interruption/

# 2：大剣
    execute if entity @s[tag=PlyWpnGsword] run function mhdp_weapons:weapon/great_sword/95_attack/

# 3：片手剣
    execute if entity @s[tag=PlyWpnSsword] run function mhdp_weapons:weapon/short_sword/95_attack/

# 4：太刀
    execute if entity @s[tag=PlyWpnLsword] run function mhdp_weapons:weapon/long_sword/95_attack/
