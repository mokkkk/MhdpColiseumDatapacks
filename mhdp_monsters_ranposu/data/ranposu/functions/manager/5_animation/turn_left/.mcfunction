#> ranposu:manager/5_animation/turn_left/
#
# 青鳥竜 アニメーションのイベントハンドラ 待機

# 効果音
    execute if score @s aj.ranposu.animation.turn_left.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.turn_left.local_anim_time matches 15 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 移動
    execute if score @s aj.ranposu.animation.turn_left.local_anim_time matches 4..20 at @s run function ranposu:manager/4_general/rotate

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.ranposu.animation.turn_left.local_anim_time matches 29.. run function ranposu:manager/5_animation/turn_left/end
