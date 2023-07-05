#> ranposu:manager/5_animation/down_end/
#
# 青鳥竜 アニメーションのイベントハンドラ ダウン終了

# 効果音
    execute if score @s aj.ranposu.animation.down_end.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.down_end.local_anim_time matches 13 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.down_end.local_anim_time matches 23 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.down_end.local_anim_time matches 23 run particle block sandstone ~ ~ ~ 1 0.1 1 0 3 force
    execute if score @s aj.ranposu.animation.down_end.local_anim_time matches 23 run playsound entity.hoglin.step master @a ~ ~ ~ 1 1

# 移動
    execute if score @s aj.ranposu.animation.down_end.local_anim_time matches 13..22 at @s run tp @s ^ ^ ^0.4 ~ 0
    execute if score @s aj.ranposu.animation.down_end.local_anim_time matches 23..28 at @s run tp @s ^ ^ ^0.1 ~ 0

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.ranposu.animation.down_end.local_anim_time matches 42.. run function ranposu:manager/5_animation/down_end/end
