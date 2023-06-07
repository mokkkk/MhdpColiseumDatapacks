#> ranposu:manager/5_animation/idle/
#
# 青鳥竜 アニメーションのイベントハンドラ 待機

# 効果音
    execute if score @s aj.ranposu.animation.idle.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 終了
    execute if score @s aj.ranposu.animation.idle.local_anim_time matches 59.. run say end