#> mhdp_weapons:weapon/great_sword/94_draw_in_sheathe/
#
# 大剣の特殊抜刀処理
#

# 特例でメインハンド・オフハンドのアイテムのみ取得する
    function oh_my_dat:please
    function mhdp_core:player/data/get_

# A:オフハンドにMHDP武器がある
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeapon:1b} run tag @s add FlagA

# B:メインハンドが空である
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand run tag @s add FlagB

# C:ステップ回避中でない
    execute unless entity @s[tag=PlySneakAvoidFunc] run tag @s add FlagC

# A && B && Cの場合，抜刀成功
    execute if entity @s[tag=FlagA,tag=FlagB,tag=FlagC] run function mhdp_weapons:weapon/great_sword/94_draw_in_sheathe/draw
    execute unless entity @s[tag=FlagA,tag=FlagB,tag=FlagC] run say validate失敗のため特殊抜刀中断

# 終了
    tag @s remove FlagA
    tag @s remove FlagB
    tag @s remove FlagC
