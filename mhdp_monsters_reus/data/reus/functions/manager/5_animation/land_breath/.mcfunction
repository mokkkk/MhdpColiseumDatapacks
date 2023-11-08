#> reus:manager/5_animation/land_breath/
#
# 火竜 アニメーションのイベントハンドラ ブレス

# 効果音
    execute if score @s aj.reus.animation.land_breath.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 0.7

# まばたき
    execute if score @s aj.reus.animation.land_breath.local_anim_time matches 40 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.land_breath.local_anim_time matches 45 run function reus:manager/7_model/head_blink_end

# 移動
    execute if score @s aj.reus.animation.land_breath.local_anim_time matches 1..15 at @s run function reus:manager/4_general/rotate

# 発射位置決定
    execute if score @s aj.reus.animation.land_breath.local_anim_time matches 15 run summon area_effect_cloud ^ ^1 ^8 {Particle:"block air",Duration:20,Tags:["ReusBreathTarget"]}
    execute if score @s aj.reus.animation.land_breath.local_anim_time matches 15 unless entity @e[tag=ReusAttackTarget,distance=0..8] at @e[tag=ReusAttackTarget,limit=1] run tp @e[type=area_effect_cloud,tag=ReusBreathTarget] ~ ~1 ~

# 攻撃
    execute if score @s aj.reus.animation.land_breath.local_anim_time matches 25 on passengers if entity @s[tag=LctPosHead] on origin at @s as @e[type=item_display,tag=ReusRoot] run function reus:manager/5_animation/land_breath/shot

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_breath.local_anim_time matches 67.. run function reus:manager/5_animation/land_breath/end
