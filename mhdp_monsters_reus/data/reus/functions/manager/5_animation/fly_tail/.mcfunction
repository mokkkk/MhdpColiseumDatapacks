#> reus:manager/5_animation/fly_tail/
#
# 火竜 アニメーションのイベントハンドラ 爪攻撃

# 演出
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 78 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 48..55 run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.9 0.4
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 28..34 if entity @s[tag=StateBreakTail] on passengers if entity @s[tag=LctPosTail2] on origin at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 3
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 28..34 if entity @s[tag=!StateBreakTail] on passengers if entity @s[tag=LctPosTail3] on origin at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.1 3

# まばたき
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 65 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 70 run function reus:manager/7_model/head_blink_end

# 移動
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 1..12 unless entity @e[tag=ReusAttackTarget,distance=..2] run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 1..12 positioned ~ ~-2 ~ unless entity @e[tag=ReusAttackTarget,distance=..4] run tp @s ^ ^2 ^0.4
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 23..28 positioned ~ ~-2 ~ unless entity @e[tag=ReusAttackTarget,distance=..4] run tp @s ^ ^2 ^0.2

# 攻撃
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 30 run function reus:manager/5_animation/fly_tail/damage

# 接地
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 1..4 at @s if block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 1..4 at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 5..79 at @s if block ~ ~-1.2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 5..79 at @s unless block ~ ~-1.3 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 80.. at @s if block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 80.. at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~

# 終了
    execute if score @s aj.reus.animation.fly_tail.local_anim_time matches 88.. run function reus:manager/5_animation/fly_tail/end
