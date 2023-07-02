#> ranposu:manager/5_animation/jump/
#
# 青鳥竜 アニメーションのイベントハンドラ 嚙みつき

# 効果音
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 22 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 22 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 37 run playsound entity.goat.step master @a ~ ~ ~ 2 0.5
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 37 run playsound entity.goat.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 37 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 70 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 移動
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 1..12 at @s run function ranposu:manager/4_general/rotate
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 8 at @s run function ranposu:manager/5_animation/jump/pos/set_pos
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 22..37 at @s run function ranposu:manager/5_animation/jump/pos/offset
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 38..42 at @s run tp @s ^ ^ ^0.1 ~ 0
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 22 run tag @s add StateIsFlying
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 37 run tag @s remove StateIsFlying

# 攻撃
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 22..41 run function ranposu:manager/5_animation/jump/damage

# 接地
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 1..22 at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 1..22 at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 38.. at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 38.. at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.ranposu.animation.jump.local_anim_time matches 99.. run function ranposu:manager/5_animation/jump/end
