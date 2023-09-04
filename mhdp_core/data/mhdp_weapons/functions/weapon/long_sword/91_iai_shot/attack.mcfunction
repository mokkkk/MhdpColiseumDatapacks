#> mhdp_weapons:weapon/long_sword/91_iai_shot/attack
#
# 居合抜刀気刃斬りの処理 攻撃
#

# プレイヤー特定
    tag @s add Target
    execute as @a if score @s MhdpPlayerUid = @e[type=marker,tag=Target,limit=1] MhdpPlayerUid run tag @s add Attacker

# モンスター特定
    execute as @e[type=slime,tag=MonsterParts] if score @s MhdpPartsUid = @e[type=marker,tag=Target,limit=1] MhdpPartsUid run tag @s add Victim

# 倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[2][16].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[2][16].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[2][16].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[2][16].Offhand

# 演出
    execute at @e[type=slime,tag=Victim] positioned ~ ~1 ~ facing entity @p feet rotated ~90 0 run function mhdp_weapons:weapon/long_sword/91_iai_shot/effect

# ダメージ発生
    execute at @e[type=slime,tag=Victim] as @a[tag=Attacker] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

# 終了
    tag @s remove Target
    tag @a remove Attacker
    kill @s
