#> mhdp_weapons:weapon/bow/5_charge_step/main
#
# 弓：チャージステップ

# 対象紐づけ
    tag @s add Target
    execute as @e[type=marker,tag=SneakAvoidStand0] if score @s MhdpPlayerUid = @a[tag=Target,limit=1,sort=nearest] MhdpPlayerUid run tag @s add Rotator
    tag @s remove Target

# タイマー増加
    scoreboard players add @s MhdpWeaponTimer 1

# 武器アニメーション
    execute if entity @s[scores={MhdpWeaponTimer=1}] run function mhdp_weapons:weapon/bow/5_charge_step/animation_0
    execute if entity @s[scores={MhdpWeaponTimer=6}] run function mhdp_weapons:weapon/bow/5_charge_step/animation_1

# 移動
    execute rotated as @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] rotated ~ 0 run function mhdp_weapons:weapon/bow/5_charge_step/move

# 演出
    execute if entity @s[scores={MhdpWeaponTimer=1}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:2,Amplifier:3b,Duration:11,ShowParticles:0b}]}
    execute if entity @s[scores={MhdpWeaponTimer=..3}] run playsound block.grass.step master @a ~ ~ ~ 1 1
    execute if entity @s[scores={MhdpWeaponTimer=..8}] run particle block grass_block ~ ~0.1 ~ 0.5 0 0.5 0 3

# 終了
    execute if entity @s[scores={MhdpWeaponTimer=8..}] run function mhdp_weapons:weapon/bow/5_charge_step/end
    tag @e[type=marker,tag=SneakAvoidStand0,tag=Rotator] remove Rotator
