#> mhdp_core:monster/shot_marker
#
# モンスターの射撃攻撃管理（Marker）

# 共通
    execute if entity @s[tag=PlyArrow] run function mhdp_weapons:weapon/bow/90_arrow/
    execute if entity @s[tag=PlyPierceArrow] run function mhdp_weapons:weapon/bow/91_pierce_arrow/
    execute if entity @s[tag=PlyKabuto] run function mhdp_weapons:weapon/long_sword/90_kabuto/
    execute if entity @s[tag=PlyIai] run function mhdp_weapons:weapon/long_sword/91_iai_shot/
