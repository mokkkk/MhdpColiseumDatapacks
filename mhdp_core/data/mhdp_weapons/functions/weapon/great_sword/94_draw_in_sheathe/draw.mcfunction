#> mhdp_weapons:weapon/great_sword/94_draw_in_sheathe/draw
#
# 大剣の特殊抜刀処理
#

# メインハンドとオフハンドを入れ替える
    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    item replace entity @s weapon.offhand with air

# サブ武器抜刀

# 武器ステータス変更
    data modify storage mhdp_core:temp Temp set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag
    # Cmd計算
        execute store result score #mhdp_temp_cmd MhdpCore run data get storage mhdp_core:temp Temp.Status.CmdOffset
        scoreboard players add #mhdp_temp_cmd MhdpCore 1
        execute store result storage mhdp_core:temp Temp.CustomModelData int 1 run scoreboard players get #mhdp_temp_cmd MhdpCore
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 1b
    # Attribute削除
        data modify storage mhdp_core:temp Temp.AttributeModifiers set value []
    item modify entity @s weapon.mainhand mhdp_core:const/great_sword/draw

# リセット処理は実行しない
    # function mhdp_weapons:weapon/great_sword/99_reset/

# 武器ステータス更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag set from storage mhdp_core:temp Temp

say 大剣特殊抜刀処理