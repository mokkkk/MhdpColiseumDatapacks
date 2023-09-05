#> mhdp_weapons:weapon/long_sword/
#
# 太刀のメイン処理
#

# 地ノ型
    execute if entity @s[tag=!PlySkillTechnical] run function mhdp_weapons:weapon/long_sword/normal
    
# 天ノ型
    execute if entity @s[tag=PlySkillTechnical] run function mhdp_weapons:weapon/long_sword/technical
