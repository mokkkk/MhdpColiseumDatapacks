# 地上強襲

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[1][2]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定
    execute positioned ^ ^1 ^ run tag @e[type=!#asa_animator:not_target,tag=!ReusHealth,tag=!Target,distance=0..6.5] add Target

# 攻撃処理
    execute as @e[tag=Target] run function reus:manager/5_animation/land_jump/damage_sub
    tag @e[tag=Target] remove Target

# 演出
    playsound entity.wither.break_block master @a ~ ~ ~ 2 0.7
    particle block sand ~ ~0.1 ~ 4 0 4 0 50
    scoreboard players set $dx delta.api.particle 450
    scoreboard players set $dy delta.api.particle 0
    scoreboard players set $dz delta.api.particle 450
    scoreboard players set $count delta.api.particle 20
    function delta:api/explosion_particle
