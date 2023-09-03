#> mhdp_weapons:weapon/long_sword/7_moveslash/attack
#
# 太刀：斬り下がり 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute positioned ~ ~1.4 ~ rotated ~90 -30 run function mhdp_weapons:weapon/long_sword/2_vertical/attack_particle

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][3].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[2][3].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[2][3].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[2][3].Offhand

# ダメージ発生
    execute positioned ^ ^ ^4.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[tag=Targets] run scoreboard players set @s MhdpWeaponSpiritGaugeTimerLsword 200
    execute if entity @s[tag=!PlySkillTechnical] if entity @e[tag=Targets] run scoreboard players add @s MhdpWeaponSpiritGaugeLsword 60
    execute if entity @s[tag=PlySkillTechnical] if entity @e[tag=Targets] run scoreboard players add @s MhdpWeaponSpiritGaugeLsword 120
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets
