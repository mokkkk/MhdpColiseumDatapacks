#> ranposu:manager/0_init/1_intrusion/
#
# 青鳥竜 召喚処理

# 確認
    execute unless entity @e[type=armor_stand,tag=RanposuRoot] run data modify storage mhdp: ExistMonster set value 0b
    execute if entity @e[type=armor_stand,tag=RanposuRoot] run data modify storage mhdp: ExistMonster set value 1b

# 召喚処理 
    execute if data storage mhdp: {ExistMonster:0b} run function ranposu:manager/0_init/1_intrusion/summon

# エラーメッセージ
    execute if data storage mhdp: {ExistMonster:1b} run tellraw @a {"text": "【エラー：既に青鳥竜が存在するため，召喚できません】"}

# ID割り当て
    scoreboard players operation @e[type=armor_stand,tag=RanposuRoot] MhdpCore = #mhdp_id_temp MhdpCore
    tp @e[type=armor_stand,tag=RanposuRoot,limit=1] ~ ~ ~

# 終了
    data modify storage mhdp: ExistMonster set value 0b
