#> reus:manager/5_animation/fly_flame_vertical/
#
# 火竜 アニメーションのイベントハンドラ 縦火炎放射

# 効果音
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 1 run playsound entity.player.breath master @a ~ ~ ~ 2 0.8
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 15 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 1..20 on passengers if entity @s[tag=LctPosHead] on origin at @s run particle flame ^ ^ ^ 0.1 0.1 0.1 0.1 5
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 106 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 106 run particle block sand ~ ~0.1 ~ 1 0 1 0 10

# 移動
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 1..10 run tp @s ^ ^ ^-0.2
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 1..65 run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 97 facing entity @e[tag=ReusAttackTarget] feet rotated ~ 0 run function reus:manager/5_animation/fly_flame_vertical/pos/set_pos
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 98..106 at @s run function reus:manager/5_animation/fly_flame_vertical/pos/offset
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 65..72 run tp @s ^ ^ ^-0.1

# 発射位置決定
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 65 run summon area_effect_cloud ^ ^1 ^8 {Particle:"block air",Duration:25,Tags:["ReusBreathTarget"]}
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 65 as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s if block ~ ~-0.3 ~ #asa_animator:no_collision run function asa_animator:general/check_ground
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 65 as @e[type=area_effect_cloud,tag=ReusBreathTarget] at @s facing entity @e[type=item_display,tag=ReusRoot] feet rotated ~ 0 positioned ^ ^ ^ run tp @s ~ ~ ~ ~ ~

# 攻撃
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 35..64 run function reus:manager/5_animation/fly_flame_vertical/damage_2
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 65..72 run function reus:manager/5_animation/fly_flame_vertical/damage_0
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 73..78 run function reus:manager/5_animation/fly_flame_vertical/damage_1

# 接地
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 1..59 at @s if block ~ ~-6.6 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 1..59 at @s unless block ~ ~-6.7 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 70..96 at @s if block ~ ~-2.0 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 70..96 at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 106.. at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 106.. at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 状態変更
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 106 run tag @s remove StateIsFlying

# 終了
    execute if score @s aj.reus.animation.fly_flame_vertical.local_anim_time matches 129.. run function reus:manager/5_animation/fly_flame_vertical/end
