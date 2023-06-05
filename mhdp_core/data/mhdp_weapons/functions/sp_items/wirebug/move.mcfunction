#> mhdp_weapons:sp_items/wirebug/move
#
# 翔蟲 tick処理

# 武器使用制限解除
    scoreboard players set @s MhdpWeaponDeactivateTimer 0

# 効果音
    playsound block.grass.step master @a ~ ~ ~ 1 1

# 対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=WirebugStand] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotater
    tag @s remove Target

# 移動
    scoreboard players set $strength delta.api.launch 21000
    execute rotated as @e[type=marker,tag=WirebugStand,tag=Rotater,limit=1] run function delta:api/launch_looking

# 終了
    kill @e[type=marker,tag=WirebugStand,tag=Rotater]
    tag @s remove MoveUp
