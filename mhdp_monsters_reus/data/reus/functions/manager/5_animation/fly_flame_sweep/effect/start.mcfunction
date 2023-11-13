# なぎ払い火炎放射エフェクト

# 攻撃判定召喚
    summon marker ~ ~ ~ {Tags:["ReusFlyFlameAttack"]}
# 初期化
    scoreboard players set @e[type=marker,tag=ReusFlyFlameAttack] AsaMatrix 30
    execute as @e[type=marker,tag=ReusFlyFlameAttack,limit=1] run tp @s ~ ~ ~ ~ ~
# 演出
    execute as @e[type=marker,tag=ReusFlyFlameAttack,limit=1] at @s run function reus:manager/5_animation/fly_flame_sweep/effect/shot
    execute as @e[type=marker,tag=ReusFlyFlameAttack,limit=1] at @s run function reus:manager/5_animation/fly_flame_sweep/effect/loop
    execute as @e[type=marker,tag=ReusFlyFlameAttack,limit=1] at @s run particle lava ~ ~1 ~ 0 0 0 0 3
    scoreboard players set $dx delta.api.particle 150
    scoreboard players set $dy delta.api.particle 0
    scoreboard players set $dz delta.api.particle 150
    scoreboard players set $count delta.api.particle 1
    execute as @e[type=marker,tag=ReusFlyFlameAttack,limit=1] at @s run function delta:api/explosion_particle
# 終了
    kill @e[type=marker,tag=ReusFlyFlameAttack]