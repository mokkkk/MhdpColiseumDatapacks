#> mhdp_weapons:weapon/short_sword/6_spin/attack
#
# 片手剣：回転斬り 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 1.2
    execute positioned ~ ~1.65 ~ run particle sweep_attack ^-1 ^ ^1.5 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.65 ~ run particle sweep_attack ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~1.65 ~ run particle sweep_attack ^1 ^ ^1.2 0.2 0.2 0.2 0.05 5

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[1][3].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[1][3].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[1][3].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[1][3].Offhand

# ダメージ発生
    execute positioned ^ ^ ^1 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets
