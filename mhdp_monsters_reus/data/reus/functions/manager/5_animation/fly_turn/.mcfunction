#> reus:manager/5_animation/fly_turn/
#
# 火竜 アニメーションのイベントハンドラ 軸合わせ

# 移動
    function reus:manager/4_general/rotate

# 効果音
    execute if score @s aj.reus.animation.fly_turn.local_anim_time matches 5 run playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7

# まばたき
    execute if score @s aj.reus.animation.fly_turn.local_anim_time matches 5 run function reus:manager/7_model/head_blink
    execute if score @s aj.reus.animation.fly_turn.local_anim_time matches 10 run function reus:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-2.4 ~ #asa_animator:no_collision at @s run tp @s ~ ~-0.2 ~ ~ ~
    execute at @s unless block ~ ~-2.5 ~ #asa_animator:no_collision at @s run tp @s ~ ~0.2 ~ ~ ~
    
# 終了
    execute if score @s aj.reus.animation.fly_turn.local_anim_time matches 16.. run function reus:manager/5_animation/fly_turn/end
