#> mhdp_weapons:weapon/bow/90_arrow/attack
#
# 放たれた矢の処理 攻撃
#

# プレイヤー特定
    tag @s add Target
    execute as @a if score @s MhdpPlayerUid = @e[type=marker,tag=Target,limit=1] MhdpPlayerUid run tag @s add Attacker

# 飛翔にらみ撃ちの場合，確定でクリティカル
    execute if entity @s[tag=JumpShot] run scoreboard players set @s MhdpCore 2

# 溜め段階に応じて倍率設定
    execute store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[3][0].Damage 1
    execute store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[3][0].ElementDamage 1
    execute if entity @s[tag=WpnBowCharge1] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[3][1].Damage 1
    execute if entity @s[tag=WpnBowCharge2] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[3][2].Damage 1
    execute if entity @s[tag=WpnBowCharge3] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[3][3].Damage 1
    execute if entity @s[tag=WpnBowCharge4] store result score #mhdp_temp_damage_multiply MhdpCore run data get storage mh_dp:player_data AttackList[3][4].Damage 1
    execute if entity @s[tag=WpnBowCharge3] store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[3][3].ElementDamage 1
    execute if entity @s[tag=WpnBowCharge4] store result score #mhdp_temp_damage_multiply_element MhdpCore run data get storage mh_dp:player_data AttackList[3][4].ElementDamage 1
    data modify storage mhdp_core:temp Temp.WeaponDamage.Type set from storage mh_dp:player_data AttackList[3][0].Type
    data modify storage mhdp_core:temp Temp.WeaponDamage.Offhand set from storage mh_dp:player_data AttackList[3][0].Offhand

# クリティカル距離以外の場合，ダメージ減算
    execute if entity @s[scores={MhdpCore=..1}] run function mhdp_weapons:weapon/bow/90_arrow/calc
    execute if entity @s[scores={MhdpCore=8..}] run function mhdp_weapons:weapon/bow/90_arrow/calc

# クリティカル距離の場合，演出
    execute if entity @s[scores={MhdpCore=2..7}] as @a[tag=Attacker] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 0.5
    execute if entity @s[scores={MhdpCore=2..7}] at @s run particle end_rod ~ ~ ~ 0 0 0 0.1 3 force

# ダメージ発生
    execute as @e[type=slime,tag=MonsterParts,distance=..2.5,limit=1,sort=nearest] run tag @s add Victim
    execute at @e[type=slime,tag=Victim] as @a[tag=Attacker] run function mhdp_weapons:core/attack/attack_by_mhdp_skill
    tag @e[type=slime,tag=Victim] remove Victim

# 終了
    tag @a remove Attacker
    kill @s
