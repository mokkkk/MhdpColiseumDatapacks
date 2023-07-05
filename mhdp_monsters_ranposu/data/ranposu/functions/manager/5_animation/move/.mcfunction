#> ranposu:manager/5_animation/move/
#
# 青鳥竜 アニメーションのイベントハンドラ 移動

# 初回読み込み
    execute unless entity @s[tag=InitAnmMove] if score @s aj.ranposu.animation.move.local_anim_time matches 1 run function ranposu:manager/5_animation/move/init

# 効果音
    execute if score @s aj.ranposu.animation.move.local_anim_time matches 3 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.move.local_anim_time matches 9 run playsound block.grass.step master @a ~ ~ ~ 2 1
    particle block sandstone ~ ~ ~ 1 0.1 1 0 3 force

# 移動
    execute at @s run function ranposu:manager/4_general/rotate
    execute at @s run tp @s ^ ^ ^0.6 ~ 0

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# ターゲットに十分近づいた場合，アニメーションを変更
    execute if entity @e[tag=RanposuAttackTarget,distance=..6] run function ranposu:manager/5_animation/move/change_animation

# 終了
    execute if score @s aj.ranposu.animation.move.local_anim_time matches 11.. run function ranposu:manager/5_animation/move/end
