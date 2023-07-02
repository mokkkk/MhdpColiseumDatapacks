#> ranposu:manager/5_animation/death/
#
# 青鳥竜 アニメーションのイベントハンドラ 大怯み

# 効果音
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 74 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 35 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.3
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 35 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 89 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 89 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 89 run playsound entity.hoglin.step master @a ~ ~ ~ 1 1

# まばたき
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 6 run function ranposu:manager/7_model/head_blink
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 20 run function ranposu:manager/7_model/head_blink_end
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 74 run function ranposu:manager/7_model/head_blink
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 139 run function ranposu:manager/7_model/head_blink_end

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.ranposu.animation.death.local_anim_time matches 139.. run function ranposu:manager/5_animation/death/end
