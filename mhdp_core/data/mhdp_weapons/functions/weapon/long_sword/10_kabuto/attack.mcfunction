#> mhdp_weapons:weapon/long_sword/10_kabuto/attack
#
# 太刀：気刃兜割 攻撃エフェクト
#

# 演出
    execute positioned ~ ~1.4 ~ rotated ~90 -90 run function mhdp_weapons:weapon/long_sword/2_vertical/attack_particle
    execute rotated ~ 0 positioned ^ ^ ^2 rotated ~ 90 run function mhdp_weapons:weapon/long_sword/10_kabuto/attack_particle

# ターゲット取得
    execute rotated ~ 0 positioned ^ ^ ^4.5 as @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add Targets

# 攻撃判定用Marker召喚
    summon marker ~ ~ ~ {Tags:["MonsterShot","PlyKabuto","Start"]}
    scoreboard players operation @e[type=marker,tag=PlyKabuto,tag=Start,limit=1,sort=nearest] MhdpPartsUid = @e[type=slime,tag=Targets,limit=1,sort=nearest] MhdpPartsUid
    scoreboard players operation @e[type=marker,tag=PlyKabuto,tag=Start,limit=1,sort=nearest] MhdpPlayerUid = @s MhdpPlayerUid
    scoreboard players set @e[type=marker,tag=PlyKabuto,tag=Start,limit=1,sort=nearest] MhdpWeaponSpiritGaugeColorLsword 1

# 終了
    tag @e[type=slime,tag=Targets] remove Targets
    tag @e[type=marker,tag=PlyKabuto,tag=Start,limit=1,sort=nearest] remove Start
    scoreboard players set @s MhdpWeaponSpiritGaugeLsword 0