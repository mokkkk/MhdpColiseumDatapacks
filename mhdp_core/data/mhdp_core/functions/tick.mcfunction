#> mhdp_core:tick
#
# 毎tick実行される処理
#
# @within tag/function minecraft:tick

# gameTime取得
    execute store result storage mh_dp:status Time int 1 run time query gametime

# phase毎の処理
    function mhdp_core:phase/

# Player用処理
    execute as @a at @s run function mhdp_core:player/

# Monster用処理
    execute as @e[type=armor_stand,tag=MonsterRoot] at @s run function mhdp_core:monster/

# 攻撃用処理
    execute if entity @e[type=marker,tag=MonsterShot,limit=1] as @e[type=marker,tag=MonsterShot] at @s run function mhdp_core:monster/shot_marker
    execute if entity @e[type=armor_stand,tag=MonsterShot,limit=1] as @e[type=armor_stand,tag=MonsterShot] at @s run function mhdp_core:monster/shot_as

# ダメージログに対するtick処理
    execute as @e[type=armor_stand,tag=LogAEC] at @s run function lib:status_log/tick
