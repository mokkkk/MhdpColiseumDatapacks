#> reus:manager/6_damage_animation/1_break/tail
#
# 火竜 部位破壊処理 尻尾

# モデル変更
    function reus:manager/7_model/tail_break
# タグ付与
    tag @s add StateBreakTail

# 演出
    execute as @e[type=armor_stand,tag=ReusParts,tag=Tail2,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
    playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8

# トースト表示
    advancement grant @a[tag=PlyQuest] only mhdp_core:toasts/reus
    schedule function asa_animator:reus/manager/3_damage/1_destroy/revoke 5t append

# 尻尾設置
    summon item_display ~ ~ ~ {item_display:"head",Tags:["MonsterShot","MonsterTail","ReusTail"],item:{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:57}}}
    execute as @e[type=item_display,tag=MonsterTail,tag=ReusTail,limit=1] run data modify entity @s transformation.scale set value [3.8f,3.8f,3.8f]
    execute as @e[type=item_display,tag=MonsterTail,tag=ReusTail,limit=1] run tp @s ~ ~ ~ ~180 0
    execute as @e[type=item_display,tag=MonsterTail,tag=ReusTail,limit=1] at @s run function asa_animator:general/check_ground
    execute as @e[type=item_display,tag=MonsterTail,tag=ReusTail,limit=1] at @s run tp @s ~ ~0.5 ~ ~ ~

# トースト表示
    advancement grant @a[tag=PlyQuest] only mhdp_core:toasts/reus
    schedule function reus:manager/6_damage_animation/1_break/revoke 5t append
