#> ranposu:manager/5_animation/damage/
#
# 青鳥竜 アニメーションのイベントハンドラ 怯み

# 効果音
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.3
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 43 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.3
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 43 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.1
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 15 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 移動
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 1..8 at @s run tp @s ^ ^ ^-0.3 ~ 0
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 9..15 at @s run tp @s ^ ^ ^-0.1 ~ 0

# まばたき
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 1 run function ranposu:manager/7_model/head_blink_end
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 15 run function ranposu:manager/7_model/head_blink
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 25 run function ranposu:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.ranposu.animation.damage.local_anim_time matches 64.. run function ranposu:manager/5_animation/damage/end
