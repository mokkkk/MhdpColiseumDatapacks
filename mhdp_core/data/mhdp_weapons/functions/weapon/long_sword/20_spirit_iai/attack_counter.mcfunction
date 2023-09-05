#> mhdp_weapons:weapon/long_sword/20_spirit_iai/attack_counter
#
# 太刀：居合抜刀気刃斬り 攻撃エフェクト
#

# 演出
    execute positioned ~ ~1.4 ~ rotated ~90 10 run function mhdp_weapons:weapon/long_sword/14_spirit_finish/attack_particle

# ターゲット取得
    execute rotated ~ 0 positioned ^ ^ ^ as @e[type=slime,tag=MonsterParts,distance=..5.5] run tag @s add Targets

# ゲージ色2段階上昇
    execute if entity @e[tag=Targets] run function mhdp_weapons:weapon/long_sword/14_spirit_finish/up_gauge_color
    execute if entity @e[tag=Targets] run function mhdp_weapons:weapon/long_sword/14_spirit_finish/up_gauge_color

# 攻撃判定用Marker召喚
    summon marker ~ ~ ~ {Tags:["MonsterShot","PlyIai","Start"]}
    scoreboard players operation @e[type=marker,tag=PlyIai,tag=Start,limit=1,sort=nearest] MhdpPartsUid = @e[type=slime,tag=Targets,limit=1,sort=nearest] MhdpPartsUid
    scoreboard players operation @e[type=marker,tag=PlyIai,tag=Start,limit=1,sort=nearest] MhdpPlayerUid = @s MhdpPlayerUid
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches ..6000 run scoreboard players set @e[type=marker,tag=PlyIai,tag=Start,limit=1,sort=nearest] MhdpWeaponSpiritGaugeColorLsword 0
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 6001..12000 run scoreboard players set @e[type=marker,tag=PlyIai,tag=Start,limit=1,sort=nearest] MhdpWeaponSpiritGaugeColorLsword 1
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 12001.. run scoreboard players set @e[type=marker,tag=PlyIai,tag=Start,limit=1,sort=nearest] MhdpWeaponSpiritGaugeColorLsword 2

# 終了
    tag @e[type=slime,tag=Targets] remove Targets
    tag @e[type=marker,tag=PlyIai,tag=Start,limit=1,sort=nearest] remove Start
