#> mhdp_weapons:weapon/long_sword/10_kabuto/attack_tec
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
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches ..6000 run scoreboard players set @e[type=marker,tag=PlyKabuto,tag=Start,limit=1,sort=nearest] MhdpWeaponSpiritGaugeColorLsword 0
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 6001..12000 run scoreboard players set @e[type=marker,tag=PlyKabuto,tag=Start,limit=1,sort=nearest] MhdpWeaponSpiritGaugeColorLsword 1
    execute if score @s MhdpWeaponSpiritGaugeColorLsword matches 12001.. run scoreboard players set @e[type=marker,tag=PlyKabuto,tag=Start,limit=1,sort=nearest] MhdpWeaponSpiritGaugeColorLsword 2

# ゲージ色消費
    function mhdp_weapons:weapon/long_sword/14_spirit_finish/down_gauge_color

# 終了
    tag @e[type=slime,tag=Targets] remove Targets
    tag @e[type=marker,tag=PlyKabuto,tag=Start,limit=1,sort=nearest] remove Start
