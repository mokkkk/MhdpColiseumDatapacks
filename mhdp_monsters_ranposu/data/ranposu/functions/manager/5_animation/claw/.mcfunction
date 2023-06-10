#> ranposu:manager/5_animation/claw/
#
# 青鳥竜 アニメーションのイベントハンドラ ひっかき

# 効果音
    execute if score @s aj.ranposu.animation.claw.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 攻撃
    execute if score @s aj.ranposu.animation.claw.local_anim_time matches 7 run function ranposu:manager/5_animation/claw/damage

# 接地
    execute at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.ranposu.animation.claw.local_anim_time matches 29.. run function ranposu:manager/5_animation/claw/end
