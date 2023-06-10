#> ranposu:manager/5_animation/claw/
#
# 青鳥竜 アニメーションのイベントハンドラ 嚙みつき

# 効果音
    execute if score @s aj.ranposu.animation.claw.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 攻撃
    execute if score @s aj.ranposu.animation.claw.local_anim_time matches 7 run function ranposu:manager/5_animation/claw/damage

# 終了
    execute if score @s aj.ranposu.animation.claw.local_anim_time matches 29.. run function ranposu:manager/5_animation/claw/end
