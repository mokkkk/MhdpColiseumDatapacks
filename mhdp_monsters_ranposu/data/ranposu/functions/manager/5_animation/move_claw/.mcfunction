#> ranposu:manager/5_animation/move_claw/
#
# 青鳥竜 アニメーションのイベントハンドラ 前進ひっかき

# 効果音
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 5 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 17 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 20 run playsound entity.player.attack.sweep master @a ~ ~ ~ 2 1.1

# 移動
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 1..3 at @s run tp @s ^ ^ ^-0.1 ~ 0
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 17..23 at @s run tp @s ^ ^ ^1.0 ~ 0
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 24..28 at @s run tp @s ^ ^ ^0.15 ~ 0
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 35..40 at @s run tp @s ^ ^ ^-0.02 ~ 0

# 攻撃
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 17..23 run function ranposu:manager/5_animation/move_claw/damage

# 終了
    execute if score @s aj.ranposu.animation.move_claw.local_anim_time matches 54.. run function ranposu:manager/5_animation/move_claw/end
