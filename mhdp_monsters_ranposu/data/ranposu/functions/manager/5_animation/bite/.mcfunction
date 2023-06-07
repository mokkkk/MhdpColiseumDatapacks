#> ranposu:manager/5_animation/bite/
#
# 青鳥竜 アニメーションのイベントハンドラ 嚙みつき

# 効果音
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 終了
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 44.. run function ranposu:manager/5_animation/bite/end
