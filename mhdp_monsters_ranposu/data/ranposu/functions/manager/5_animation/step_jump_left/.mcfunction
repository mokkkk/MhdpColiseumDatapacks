#> ranposu:manager/5_animation/step_jump_left/
#
# 青鳥竜 アニメーションのイベントハンドラ ステップとびかかり

# 効果音
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 10 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 10 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 18 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 18 run playsound block.grass.step master @a ~ ~ ~ 2 1

    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 30 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 30 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 44 run playsound entity.goat.step master @a ~ ~ ~ 2 0.5
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 44 run playsound entity.goat.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 44 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 77 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 移動
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 1..28 at @s run function ranposu:manager/4_general/rotate
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 1..18 at @s run tp @s ^0.6 ^ ^ ~ ~
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 19..23 at @s run tp @s ^0.1 ^ ^ ~ ~
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 25 at @s run function ranposu:manager/5_animation/step_jump_right/pos/set_pos
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 30..45 at @s run function ranposu:manager/5_animation/step_jump_right/pos/offset
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 46..48 at @s run tp @s ^ ^ ^0.1 ~ 0

# 攻撃
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 32..45 run function ranposu:manager/5_animation/jump/damage

# 接地
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 1..29 at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 1..29 at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 45.. at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 45.. at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    

# 終了
    execute if score @s aj.ranposu.animation.step_jump_left.local_anim_time matches 99.. run function ranposu:manager/5_animation/step_jump_left/end
