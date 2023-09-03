#> mhdp_core:player/item/carrot_on_a_stick/hidensyo/start
#
# アイテム用メイン処理 
# １０２：天ノ型の秘伝書

# タグ変更
    execute if entity @s[tag=!PlySkillTechnical] run tag @s add Changed
    execute if entity @s[tag=!PlySkillTechnical] run tag @s add PlySkillTechnical
    execute if entity @s[tag=PlySkillTechnical,tag=!Changed] run tag @s remove PlySkillTechnical
    tag @s remove Changed

# 演出
    playsound block.enchantment_table.use master @s ~ ~ ~ 1 2
    playsound block.enchantment_table.use master @s ~ ~ ~ 1 1.5
    execute if entity @s[tag=!PlySkillTechnical] run tellraw @p [{"text":"【秘伝書を"},{"text":"地ノ型","color":"red","bold":true},{"text":"に変更した】"}]
    execute if entity @s[tag=PlySkillTechnical] run tellraw @p [{"text":"【秘伝書を"},{"text":"天ノ型","color":"aqua","bold":true},{"text":"に変更した】"}]
