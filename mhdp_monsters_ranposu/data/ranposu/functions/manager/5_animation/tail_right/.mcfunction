#> ranposu:manager/5_animation/tail_right/
#
# 青鳥竜 アニメーションのイベントハンドラ 尻尾なぎはらい

# 効果音
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 15 run playsound entity.goat.step master @a ~ ~ ~ 2 0.5
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 20 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 31 run playsound entity.goat.step master @a ~ ~ ~ 2 0.5
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 40 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 21 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 20 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0.7

# 移動
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 3..15 run tp @s ^-0.05 ^ ^ ~-2 0
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 20..31 run tp @s ^0.2 ^ ^-0.1 ~14 0
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 32..38 run tp @s ^0.05 ^ ^ ~0.8 0

# 攻撃
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 20..27 run function ranposu:manager/5_animation/tail_right/damage

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.ranposu.animation.tail_right.local_anim_time matches 59.. run function ranposu:manager/5_animation/tail_right/end
