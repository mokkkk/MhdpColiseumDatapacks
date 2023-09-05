#> mhdp_weapons:weapon/long_sword/8_wirekick/attack
#
# 太刀：飛翔蹴り 攻撃エフェクト
#

# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 1

# ターゲット取得
    execute positioned ^ ^ ^2.5 if entity @e[type=slime,tag=MonsterParts,distance=..4] run tag @s add AttackHit
