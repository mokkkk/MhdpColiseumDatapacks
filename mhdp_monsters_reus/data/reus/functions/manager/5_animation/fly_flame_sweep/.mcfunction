#> reus:manager/5_animation/fly_flame_sweep/
#
# 火竜 アニメーションのイベントハンドラ なぎ払い火炎放射

# 効果音
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 1 run playsound entity.player.breath master @a ~ ~ ~ 2 0.8
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 20 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 40 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 54 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 68 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 1..30 on passengers if entity @s[tag=LctPosHead] on origin at @s run particle flame ^ ^ ^ 0.1 0.1 0.1 0.1 5

# 移動
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 1..38 run function reus:manager/4_general/rotate

# 発射位置決定
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 38 run summon area_effect_cloud ^ ^1 ^8 {Particle:"block air",Duration:20,Tags:["ReusBreathTarget"]}
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 38 if entity @e[tag=ReusAttackTarget,distance=8..25] at @e[tag=ReusAttackTarget,limit=1] run tp @e[type=area_effect_cloud,tag=ReusBreathTarget] ~ ~1 ~
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 38 as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s if block ~ ~-0.3 ~ #asa_animator:no_collision run function asa_animator:general/check_ground
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 38 as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s facing entity @e[type=item_display,tag=ReusRoot] feet rotated ~ 0 positioned ^14 ^ ^-0.5 run tp @s ~ ~ ~ ~ ~

# 攻撃
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 40..53 run function reus:manager/5_animation/fly_flame_sweep/damage

# 接地
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 1..59 at @s if block ~ ~-6.6 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.1 ~ ~ ~
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 1..59 at @s unless block ~ ~-6.7 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 60.. at @s if block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 60.. at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.fly_flame_sweep.local_anim_time matches 80.. run function reus:manager/5_animation/fly_flame_sweep/end
