#> mhdp_weapons:weapon/great_sword/6_sweep/attack
#
# 大剣：薙ぎ払い 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound item.trident.throw master @a ~ ~ ~ 1 0.7
    execute positioned ^1 ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.3 0.1 0.3 0 10
    execute positioned ^ ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.3 0.1 0.3 0 10
    execute positioned ^-1 ^ ^1.5 run particle sweep_attack ~ ~1 ~ 0.3 0.1 0.3 0 10

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[0][8].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[0][8].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[0][8].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[0][8].Offhand

# ダメージ発生
    execute positioned ^ ^ ^5.5 as @e[type=slime,tag=MonsterParts,distance=..6.5] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets
