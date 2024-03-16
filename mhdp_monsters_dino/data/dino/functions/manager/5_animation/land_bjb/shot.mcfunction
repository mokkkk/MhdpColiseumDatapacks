#> reus:manager/5_animation/land_bjb/shot
#
# 火竜 アニメーションのイベントハンドラ ブレス発射

# 攻撃用マーカー召喚
    summon armor_stand ~ ~-1.4 ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","ReusBreath","Start"],ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}]}

# 怒り状態タグ付与
    execute if entity @s[tag=IsAnger] run tag @e[type=armor_stand,tag=ReusBreath,tag=Start] add IsAnger

# 移動方向決定
    execute as @e[type=armor_stand,tag=ReusBreath,tag=Start] positioned as @s positioned ~ ~1.4 ~ run tp @s ~ ~-1.4 ~ ~ 45
    tag @e[type=armor_stand,tag=ReusBreath,tag=Start] remove Start

# 演出
    particle flame ~ ~ ~ 0 0 0 0.1 30
    playsound entity.ghast.shoot master @a ~ ~ ~ 2 1

# 状態変更
    execute if score @s aj.reus.animation.land_jump.local_anim_time matches 15 run tag @s add StateIsFlying