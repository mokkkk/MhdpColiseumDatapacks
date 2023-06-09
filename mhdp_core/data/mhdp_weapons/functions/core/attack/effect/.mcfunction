#> mhdp_weapons:core/attack/effect/
#
# 攻撃時処理 ヒットエフェクト

# 効果音
    execute if data storage mhdp_core:temp Temp.WeaponDamage{Type:1} run say 切断
    execute if data storage mhdp_core:temp Temp.WeaponDamage{Type:2} run say 打撃
    execute if data storage mhdp_core:temp Temp.WeaponDamage{Type:3} run say 射撃

# 流血
    execute if score #mhdp_temp_def MhdpCore matches ..44 run particle block red_wool ~ ~ ~ 0.1 0.1 0.1 1 15
    execute if score #mhdp_temp_def MhdpCore matches 45.. run particle block red_wool ~ ~ ~ 0.3 0.3 0.3 1 30

# 会心
    execute if entity @s[tag=Critical] run function mhdp_weapons:core/attack/effect/crit

# 属性
    execute if score #mhdp_temp_element_type MhdpCore matches 1 positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/fire
    execute if score #mhdp_temp_element_type MhdpCore matches 2 positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/water
    execute if score #mhdp_temp_element_type MhdpCore matches 3 positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/thunder
    execute if score #mhdp_temp_element_type MhdpCore matches 4 positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/ice
    execute if score #mhdp_temp_element_type MhdpCore matches 5 positioned ~ ~1.65 ~ facing entity @e[type=slime,tag=Victim] feet positioned ^ ^ ^1.5 run function mhdp_weapons:core/attack/effect/element/dragon
