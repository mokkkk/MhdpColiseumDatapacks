#> ranposu:manager/5_animation/bite/
#
# 青鳥竜 アニメーションのイベントハンドラ 嚙みつき

# 効果音
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 1 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 29 run playsound block.grass.step master @a ~ ~ ~ 2 1

# 移動
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 1..3 at @s run tp @s ^ ^ ^-0.1 ~ 0
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 10..15 at @s positioned ^ ^2 ^5 unless entity @e[tag=RanposuTarget,distance=..3.5] positioned as @s run tp @s ^ ^ ^0.2 ~ 0
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 30..32 at @s run tp @s ^ ^ ^-0.02 ~ 0

# 攻撃
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 15 run function ranposu:manager/5_animation/bite/damage

# 終了
    execute if score @s aj.ranposu.animation.bite.local_anim_time matches 44.. run function ranposu:manager/5_animation/bite/end
