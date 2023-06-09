#> mhdp_core:monster/damage/
#
# モンスターにダメージを与える

# minecraft側データ取得
    # ダメージ量
        execute store result score #mhdp_temp_health AsaMatrix run data get entity @s Health 100
        scoreboard players set #mhdp_temp_damage AsaMatrix 100000
        execute store result score #mhdp_temp_damage_multiply AsaMatrix run scoreboard players operation #mhdp_temp_damage AsaMatrix -= #mhdp_temp_health AsaMatrix

# mhdp側データ取得
    # 攻撃側属性
        execute store result score #mhdp_element_temp MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.ElementType
    # 防御側耐性
    # 物理：#mhdp_temp_def
    # 属性：#mhdp_temp_element_def
        function mhdp_core:monster/damage/get

 # 実ダメージからダメージ倍率を計算 (攻撃力デフォルト6)
     scoreboard players set #mhdp_temp_multiply AsaMatrix 6
     scoreboard players operation #mhdp_temp_damage_multiply AsaMatrix /= #mhdp_temp_multiply AsaMatrix

# ダメージ量を表記ダメージに揃える
#     execute store result score #mhdp_temp_damage_stat AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.Damage 100
#     scoreboard players operation #mhdp_temp_damage_stat AsaMatrix *= #mhdp_temp_damage_multiply AsaMatrix
#     execute store result score #mhdp_temp_damage AsaMatrix run scoreboard players operation #mhdp_temp_damage_stat AsaMatrix /= #asam_const_100 AsaMatrix
# 
# # 属性に応じてダメージ増減
#     execute store result score #mhdp_temp_type AsaMatrix run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus.Type
#     execute if score @s MhdpMWeakness = #mhdp_temp_type AsaMatrix run scoreboard players add #mhdp_temp_damage AsaMatrix 100
#     execute if score @s MhdpMResist = #mhdp_temp_type AsaMatrix run scoreboard players remove #mhdp_temp_damage AsaMatrix 100
# 
# # 切れ味補正取得
#     execute unless data storage mhdp: Temp.Charm{Ruko:true} run function mh_dp:weapon/attack/damage/sharpness_0
#     execute if data storage mhdp: Temp.Charm{Ruko:true} run function mh_dp:weapon/attack/damage/sharpness_1
#    
# # 切れ味補正変化系護石効果適用
#     execute if data storage mhdp: Temp.Charm{Diablos:true} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{SharpnessColor:2} run scoreboard players set #mhdp_temp_multiply AsaMatrix 110
#     execute if data storage mhdp: Temp.Charm{Diablos:true} if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{SharpnessColor:3} run scoreboard players set #mhdp_temp_multiply AsaMatrix 125
# 
# # 切れ味補正適用
#     scoreboard players operation #mhdp_temp_damage AsaMatrix *= #mhdp_temp_multiply AsaMatrix
#     scoreboard players operation #mhdp_temp_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 
# # ダメージ増加系護石効果適用
#     execute if data storage mhdp: Temp.Charm{Reus:true} run scoreboard players add #mhdp_temp_damage AsaMatrix 75
#     execute if data storage mhdp: Temp.Charm{Zinogre:true} if score #mhdp_temp_type AsaMatrix matches 3 run scoreboard players add #mhdp_temp_damage AsaMatrix 150
#     execute if data storage mhdp: Temp.Charm{Brachy:true} run scoreboard players add #mhdp_temp_damage AsaMatrix 250
# 
# # HP適応
#     scoreboard players set #mhdp_temp_health AsaMatrix 100000
#     scoreboard players operation #mhdp_temp_health AsaMatrix -= #mhdp_temp_damage AsaMatrix
#     execute store result entity @s Health float 0.01 run scoreboard players get #mhdp_temp_health AsaMatrix
# 
# # 属性パーティクル
#     execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:1} at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/fire
#     execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:2} at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/water
#     execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:3} at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/thunder
#     execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:4} at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/ice
#     execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Weapon.tag.MhdpStatus{Type:5} at @s positioned ~ ~1.2 ~ run function mh_dp:weapon/attack/particle/dragon

# 終了
    scoreboard players reset #mhdp_temp_health
    scoreboard players reset #mhdp_temp_multiply
    scoreboard players reset #mhdp_temp_damage
    scoreboard players reset #mhdp_temp_damage_multiply
    scoreboard players reset #mhdp_element_temp
    scoreboard players reset #mhdp_temp_def
    scoreboard players reset #mhdp_temp_element_def
