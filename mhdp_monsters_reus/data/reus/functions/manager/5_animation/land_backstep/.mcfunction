#> reus:manager/5_animation/land_backstep/
#
# 火竜 アニメーションのイベントハンドラ バックステップ

# 効果音
    execute if score @s aj.reus.animation.land_backstep.local_anim_time matches 1 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_backstep.local_anim_time matches 18 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_backstep.local_anim_time matches 18 run particle block sand ~ ~0.1 ~ 1 0 1 0 10

# 移動
    execute if score @s aj.reus.animation.land_backstep.local_anim_time matches 1..28 at @s run function reus:manager/4_general/rotate
    execute if score @s aj.reus.animation.land_backstep.local_anim_time matches 1 facing entity @e[tag=ReusAttackTarget] feet rotated ~ 0 run function reus:manager/5_animation/land_backstep/pos/set_pos
    execute if score @s aj.reus.animation.land_backstep.local_anim_time matches 2..17 at @s run function reus:manager/5_animation/land_backstep/pos/offset

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 状態変更
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 1 run tag @s add StateIsFlying
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 18 run tag @s remove StateIsFlying

# 終了
    execute if score @s aj.reus.animation.land_backstep.local_anim_time matches 29.. run function reus:manager/5_animation/land_backstep/end
