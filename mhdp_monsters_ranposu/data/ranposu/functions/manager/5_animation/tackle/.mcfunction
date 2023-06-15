#> ranposu:manager/5_animation/tackle/
#
# 青鳥竜 アニメーションのイベントハンドラ タックル

# 効果音
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 22 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 22 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 39..41 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 39..41 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 37 run playsound entity.goat.step master @a ~ ~ ~ 2 0.7

# 移動
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 1..5 at @s run function ranposu:manager/4_general/rotate
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 1..3 at @s run tp @s ^ ^ ^-0.1 ~ 0
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 22..28 at @s run tp @s ^ ^ ^1.0 ~ 0
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 29..40 at @s run tp @s ^ ^ ^0.4 ~ 0
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 41..45 at @s run tp @s ^ ^ ^0.1 ~ 0

# 攻撃
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 22..32 run function ranposu:manager/5_animation/tackle/damage

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.ranposu.animation.tackle.local_anim_time matches 69.. run function ranposu:manager/5_animation/tackle/end
