# ブレス

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[1][5]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute positioned ~ ~1.45 ~ run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..3.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function reus:manager/5_animation/land_breath/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    execute positioned ~ ~1.45 ~ run playsound minecraft:delta.entity.generic.explode block @a ~ ~ ~ 2.0 0.7
    execute positioned ~ ~1.45 ~ run function delta:api/explosion_emitter_particle
    particle lava ~ ~1.45 ~ 0.6 0.6 0.6 0.5 15

# 終了
    tag @s add ExecutedDamage
    kill @s
