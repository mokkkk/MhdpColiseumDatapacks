#> reus:manager/5_animation/fly_attack/
#
# 火竜 アニメーションのイベントハンドラ 爪攻撃

# 効果音
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 22 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# まばたき
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 20 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 25 run function reus:manager/7_model/head_blink_end

# 移動
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 1..7 unless entity @e[tag=ReusAttackTarget,distance=..2] run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 5..15 positioned ~ ~-2 ~ unless entity @e[tag=ReusAttackTarget,distance=..4] run tp @s ^ ^2 ^0.3
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 16..22 positioned ~ ~-2 ~ unless entity @e[tag=ReusAttackTarget,distance=..4] run tp @s ^ ^2 ^1.2

# 攻撃
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 22 run function reus:manager/5_animation/fly_attack/damage

# 接地
    execute at @s if block ~ ~-2 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute at @s unless block ~ ~-2.1 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.fly_attack.local_anim_time matches 42.. run function reus:manager/5_animation/fly_attack/end
