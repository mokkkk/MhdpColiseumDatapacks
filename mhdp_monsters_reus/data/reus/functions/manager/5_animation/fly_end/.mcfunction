#> reus:manager/5_animation/fly_end/
#
# 火竜 アニメーションのイベントハンドラ 着地

# 移動
    execute if score @s aj.reus.animation.fly_end.local_anim_time matches 14 facing entity @e[tag=ReusAttackTarget,limit=1] feet rotated ~ 0 run function reus:manager/5_animation/fly_end/pos/set_pos
    execute if score @s aj.reus.animation.fly_end.local_anim_time matches 14..19 at @s run function reus:manager/5_animation/fly_end/pos/offset

# 効果音
    execute if score @s aj.reus.animation.fly_end.local_anim_time matches 6 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_end.local_anim_time matches 19 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_end.local_anim_time matches 19 run particle block sand ~ ~0.1 ~ 2 0 2 0 20
    execute if score @s aj.reus.animation.fly_end.local_anim_time matches 39 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# 状態変更
    execute if score @s aj.reus.animation.fly_end.local_anim_time matches 19 run tag @s remove StateIsFlying

# 終了
    execute if score @s aj.reus.animation.fly_end.local_anim_time matches 39.. run function reus:manager/5_animation/fly_end/end
