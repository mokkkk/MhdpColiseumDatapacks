#> ranposu:manager/5_animation/damage_down/
#
# 青鳥竜 アニメーションのイベントハンドラ 大怯み

# 効果音
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.3
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 16 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 16 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 16 run playsound entity.hoglin.step master @a ~ ~ ~ 1 1

# 移動
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 16 at @s run tp @s ^ ^ ^-0.1 ~ 0
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 1 at @s run function ranposu:manager/5_animation/damage_down/pos/set_pos
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 1..15 at @s run function ranposu:manager/5_animation/damage_down/pos/offset

# 接地
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 18.. at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 18.. at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.ranposu.animation.damage_down.local_anim_time matches 25.. run function ranposu:manager/5_animation/damage_down/end
