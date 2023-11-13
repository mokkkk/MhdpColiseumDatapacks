# 縦火炎放射

# ダメージ設定
    data modify storage mhdp_core:temp Temp.Damage set from storage mh_dp:monster_data AttackList[1][9]
    execute if entity @s[tag=StateIsAnger] run data modify storage mhdp_core:temp Temp.Damage.Damage set from storage mhdp_core:temp Temp.Damage.Anger

# ターゲット設定・演出
    execute on passengers if entity @s[tag=LctPosHead] on origin at @s facing entity @e[type=area_effect_cloud,tag=ReusBreathTarget,limit=1] feet run function reus:manager/5_animation/fly_flame_vertical/effect/start
    execute as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s run tp @s ^ ^ ^-1
    execute on passengers if entity @s[tag=LctPosHead] on origin at @s facing entity @e[type=area_effect_cloud,tag=ReusBreathTarget,limit=1] feet run function reus:manager/5_animation/fly_flame_vertical/effect/start
    execute as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s run tp @s ^ ^ ^-1
    execute on passengers if entity @s[tag=LctPosHead] on origin at @s facing entity @e[type=area_effect_cloud,tag=ReusBreathTarget,limit=1] feet run function reus:manager/5_animation/fly_flame_vertical/effect/start
    execute as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s run tp @s ^ ^ ^-1
    
# 演出
    playsound item.firecharge.use master @a ~ ~ ~ 3 0.5
    execute on passengers if entity @s[tag=LctPosHead] on origin at @s run particle flame ~ ~ ~ 0 0 0 0.1 10 force

# 攻撃処理
    execute as @e[tag=Target] run function reus:manager/5_animation/fly_attack/damage_sub
    tag @e[tag=Target] remove Target
