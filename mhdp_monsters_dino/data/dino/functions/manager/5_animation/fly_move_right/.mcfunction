#> reus:manager/5_animation/fly_move_right/
#
# 火竜 アニメーションのイベントハンドラ 旋回回りこみ

# 移動
    execute if score @s aj.reus.animation.fly_move_right.local_anim_time matches 1 facing entity @e[tag=ReusAttackTarget,limit=1] feet rotated ~ 0 run function reus:manager/5_animation/fly_move_right/pos/set_pos_0
    execute if score @s aj.reus.animation.fly_move_right.local_anim_time matches 8 rotated ~ 0 run function reus:manager/5_animation/fly_move_right/pos/set_pos_1
    execute if score @s aj.reus.animation.fly_move_right.local_anim_time matches 1..14 at @s run function reus:manager/5_animation/fly_move_right/pos/offset
    execute if score @s aj.reus.animation.fly_move_right.local_anim_time matches 1..22 at @s run function reus:manager/4_general/rotate

# 効果音
    execute if score @s aj.reus.animation.fly_move_right.local_anim_time matches 4 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 終了
    execute if score @s aj.reus.animation.fly_move_right.local_anim_time matches 24.. run function reus:manager/5_animation/fly_move_right/end
