#> mhdp_weapons:weapon/short_sword/16_upper/attack
#
# 片手剣：昇竜撃 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound entity.hoglin.step master @a ~ ~ ~ 1 1
    
    execute positioned ~ ~2 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~2.5 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~3 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~3.5 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~4 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~4.5 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5
    execute positioned ~ ~5 ~ run particle cloud ^ ^ ^1.7 0.2 0.2 0.2 0.05 5

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[1][14].Damage 1
    execute if entity @s[tag=WpnSswordCounter] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[1][14].DamageCounter 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[1][14].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[1][14].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[1][14].Offhand

# ダメージ発生
    execute positioned ~ ~1 ~ as @e[type=slime,tag=MonsterParts,distance=..4.5] run tag @s add Targets
    execute if entity @e[type=slime,tag=Targets] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Targets] remove Targets

# 終了
    tag @s remove WpnSswordCounter
