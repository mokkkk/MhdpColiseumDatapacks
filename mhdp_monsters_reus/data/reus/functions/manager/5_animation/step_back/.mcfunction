#> ranposu:manager/5_animation/step_back/
#
# 青鳥竜 アニメーションのイベントハンドラ バックステップ

# 効果音
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 4 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 4 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 18 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 18 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 移動
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 1..3 at @s run function ranposu:manager/4_general/rotate
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 19..23 at @s run tp @s ^ ^ ^-0.1 ~ 0
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 3 at @s run function ranposu:manager/5_animation/step_back/pos/set_pos
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 4..18 at @s run function ranposu:manager/5_animation/step_back/pos/offset

# 接地
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 1..3 at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 1..3 at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 18.. at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 18.. at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.ranposu.animation.step_back.local_anim_time matches 25.. run function ranposu:manager/5_animation/step_back/end
