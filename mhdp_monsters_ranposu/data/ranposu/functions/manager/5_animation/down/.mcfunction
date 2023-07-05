#> ranposu:manager/5_animation/down/
#
# 青鳥竜 アニメーションのイベントハンドラ 移動

# 初回読み込み
    execute unless entity @s[tag=InitAnmDown] if score @s aj.ranposu.animation.down.local_anim_time matches 1 run function ranposu:manager/5_animation/down/init

# 効果音
    execute if score @s aj.ranposu.animation.down.local_anim_time matches 5 run playsound entity.phantom.bite master @a ~ ~ ~ 1 1.3
    execute if score @s aj.ranposu.animation.down.local_anim_time matches 5 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.down.local_anim_time matches 5 run particle block sandstone ~ ~ ~ 1 0.1 1 0 3 force

# 演出
    execute if entity @s[tag=StateIsStun] at @e[type=marker,tag=LctPosHead] run particle crit ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.ranposu.animation.down.local_anim_time matches 34.. run function ranposu:manager/5_animation/down/end
