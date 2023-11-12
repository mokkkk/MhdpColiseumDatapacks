#> reus:manager/5_animation/fly_movebreath_r/
#
# 火竜 アニメーションのイベントハンドラ 強襲

# 効果音
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 20 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 42 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 移動
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 1..10 run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 1..10 run tp @s ^ ^0.1 ^-0.2
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 15 facing entity @e[tag=ReusAttackTarget] feet rotated ~ 0 run function reus:manager/5_animation/fly_movebreath_r/pos/set_pos_0
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 16..50 at @s run function reus:manager/5_animation/fly_movebreath_r/pos/offset
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 16..21 at @s run tp @s ^-0.8 ^ ^0.1 ~ ~
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 22..27 at @s run tp @s ^-0.4 ^ ^0.1 ~ ~
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 39..50 at @s run tp @s ^0.1 ^ ^-0.1 ~ ~
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 39..60 at @s run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 56..62 at @s run tp @s ^ ^0.1 ^-0.2 ~ ~
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 63..69 at @s run tp @s ^ ^-0.1 ^-0.2 ~ ~

# 発射位置決定
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 52 run summon area_effect_cloud ^ ^1 ^8 {Particle:"block air",Duration:20,Tags:["ReusBreathTarget"]}
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 52 unless entity @e[tag=ReusAttackTarget,distance=0..8] at @e[tag=ReusAttackTarget,limit=1] run tp @e[type=area_effect_cloud,tag=ReusBreathTarget] ~ ~1 ~
# 攻撃
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 56 on passengers if entity @s[tag=LctPosHead] on origin at @s as @e[type=item_display,tag=ReusRoot] run function reus:manager/5_animation/fly_movebreath_r/shot

# 接地
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 70.. at @s if block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 70.. at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~

# 終了
    execute if score @s aj.reus.animation.fly_movebreath_r.local_anim_time matches 79.. run function reus:manager/5_animation/fly_movebreath_r/end
