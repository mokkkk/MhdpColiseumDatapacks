#> reus:manager/5_animation/fly_assault/
#
# 火竜 アニメーションのイベントハンドラ 強襲

# 効果音
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 42 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 移動
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 1..10 run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 1..10 run tp @s ^ ^0.1 ^-0.2
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 29 facing entity @e[tag=ReusAttackTarget] feet rotated ~ 0 run function reus:manager/5_animation/fly_assault/pos/set_pos_0
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 30..45 at @s run function reus:manager/5_animation/fly_assault/pos/offset
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 45 at @s run function reus:manager/5_animation/fly_assault/pos/set_pos_1
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 46..57 at @s run function reus:manager/5_animation/fly_assault/pos/offset
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 43..62 at @s run tp @s ~ ~ ~ ~-9 ~

# 攻撃
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 30..45 run function reus:manager/5_animation/fly_assault/damage

# 接地
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 58.. at @s if block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 58.. at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~

# 終了
    execute if score @s aj.reus.animation.fly_assault.local_anim_time matches 64.. run function reus:manager/5_animation/fly_assault/end
