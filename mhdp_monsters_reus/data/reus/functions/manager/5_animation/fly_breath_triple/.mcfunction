#> reus:manager/5_animation/fly_breath_triple/
#
# 火竜 アニメーションのイベントハンドラ 3連ブレス

# 効果音
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 1 run playsound entity.player.breath master @a ~ ~ ~ 2 0.8
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 移動
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 1..28 run function reus:manager/4_general/rotate

# 発射位置決定
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 28 run summon area_effect_cloud ^ ^1 ^16 {Particle:"block air",Duration:30,Tags:["ReusBreathTarget"]}
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 28 unless entity @e[tag=ReusAttackTarget,distance=..8] at @e[tag=ReusAttackTarget,limit=1] run tp @e[type=area_effect_cloud,tag=ReusBreathTarget] ~ ~1 ~
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 44 as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s facing entity @e[type=item_display,tag=ReusRoot] feet rotated ~ 0 positioned ^10 ^ ^8 run tp @s ~ ~ ~ ~ ~
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 54 as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s positioned ^-20 ^ ^ run tp @s ~ ~ ~ ~ ~

# 攻撃
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 35 on passengers if entity @s[tag=LctPosHead] on origin at @s as @e[type=item_display,tag=ReusRoot] run function reus:manager/5_animation/fly_breath_triple/shot
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 45 on passengers if entity @s[tag=LctPosHead] on origin at @s as @e[type=item_display,tag=ReusRoot] run function reus:manager/5_animation/fly_breath_triple/shot
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 55 on passengers if entity @s[tag=LctPosHead] on origin at @s as @e[type=item_display,tag=ReusRoot] run function reus:manager/5_animation/fly_breath_triple/shot

# 接地
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 1..64 at @s if block ~ ~-4.6 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.1 ~ ~ ~
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 1..64 at @s unless block ~ ~-4.7 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 65.. at @s if block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 65.. at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.fly_breath_triple.local_anim_time matches 79.. run function reus:manager/5_animation/fly_breath_triple/end
