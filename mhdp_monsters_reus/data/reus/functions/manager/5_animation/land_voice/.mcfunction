#> reus:manager/5_animation/land_voice/
#
# 火竜 アニメーションのイベントハンドラ 待機

# 移動
    # ターゲットがいない場合，最も近くのプレイヤーに向かって咆哮
        execute if score @s aj.reus.animation.land_voice.local_anim_time matches 1 unless entity @e[tag=ReusAttackTarget] as @p run tag @s add ReusAttackTarget
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 1..20 at @s run function reus:manager/4_general/rotate

# 演出
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 18 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 25 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 87 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 38 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 25 run playsound entity.hoglin.angry master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 44..60 run playsound entity.ender_dragon.growl master @a[distance=..48] ~ ~ ~ 1 0.5 0.4
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 44..60 run playsound entity.ravager.attack master @a[distance=..48] ~ ~ ~ 1 0.7 0.4
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 44..75 on passengers if entity @s[tag=LctPosHead] on origin at @s run particle flash ~ ~ ~ 0 0 0 0 1
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 44..75 positioned ^ ^ ^6 run particle block grass_block ~ ~ ~ 2 0.1 2 0 5

# 咆哮怯み
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 44 as @a[distance=..12] at @s run function mhdp_core:player/damage/knockback/voice/1

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.land_voice.local_anim_time matches 97.. run tag @s add ChangeAnm
