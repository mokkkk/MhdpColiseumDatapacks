#> reus:manager/0_init/0_summon/summon
#
# 火竜 召喚処理

# パーツ召喚(animated_java)
    execute positioned ~ ~ ~ run function animated_java:reus/summon

# 待機アニメーション再生
    execute as @e[tag=ReusRoot] run function animated_java:reus/animations/land_idle/play
    
# 当たり判定初期化
    execute positioned ~ ~ ~ run function reus:manager/0_init/3_general/health

# HPセット
    function reus:manager/0_init/3_general/hp
