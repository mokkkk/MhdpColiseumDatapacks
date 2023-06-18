#> ranposu:manager/5_animation/voice/
#
# 青鳥竜 アニメーションのイベントハンドラ 威嚇

# 効果音
    execute if score @s aj.ranposu.animation.voice.local_anim_time matches 9 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.voice.local_anim_time matches 24 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.voice.local_anim_time matches 9 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.1
    execute if score @s aj.ranposu.animation.voice.local_anim_time matches 24 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.1
    execute if score @s aj.ranposu.animation.voice.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.voice.local_anim_time matches 32 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~
    
# 終了
    execute if score @s aj.ranposu.animation.voice.local_anim_time matches 52.. run function ranposu:manager/5_animation/voice/end
