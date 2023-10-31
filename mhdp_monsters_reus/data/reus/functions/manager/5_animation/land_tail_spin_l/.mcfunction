#> reus:manager/5_animation/land_tail_spin_l/
#
# 火竜 アニメーションのイベントハンドラ 尻尾回転

# 移動
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 26..34 at @s run tp @s ^ ^ ^ ~-15 0
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 35..40 at @s run tp @s ^ ^ ^ ~-6 0
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 41..50 at @s run tp @s ^ ^ ^ ~-1 0
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 70..78 at @s run tp @s ^ ^ ^ ~-15 0
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 79..84 at @s run tp @s ^ ^ ^ ~-6 0
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 85..94 at @s run tp @s ^ ^ ^ ~-1 0

# 演出
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 1..3 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 26..35 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 70..79 run playsound block.grass.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 26 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 70 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 26..29 run playsound entity.ravager.attack master @a ~ ~ ~ 2 0.8
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 70..73 run playsound entity.ravager.attack master @a ~ ~ ~ 2 0.8
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 26..35 run particle block sand ~ ~0.1 ~ 0.5 0 0.5 0 3
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 70..79 run particle block sand ~ ~0.1 ~ 0.5 0 0.5 0 3

# 攻撃
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 26..40 run function reus:manager/5_animation/land_tail_spin_r/damage
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 70..84 run function reus:manager/5_animation/land_tail_spin_r/damage

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_tail_spin_l.local_anim_time matches 117.. run function reus:manager/5_animation/land_tail_spin_l/end
