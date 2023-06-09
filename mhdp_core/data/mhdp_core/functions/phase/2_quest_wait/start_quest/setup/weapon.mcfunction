#> mhdp_core:phase/2_quest_wait/start_quest/setup/weapon
#
# Phase1_クエスト受注 クエスト開始処理 プレイヤー武器セット

# データ取得準備
    function oh_my_dat:please
    
# すでに出発条件確認でデータ取得を終えているので，データは取得しない
# どこかにある武器を消去
    clear @s ender_eye{MhdpWeapon:1b} 64

# オフハンドが空じゃない場合，オフハンドのアイテムを保存する
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.OffHand.tag{MhdpWeaponSub:1b} run function mhdp_weapons:core/check/off_store

# shulker_boxに武器データをコピー
    data modify block 0 0 0 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]
    data modify block 0 0 0 Items[{Slot:0b}].id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.id
    data modify block 0 0 0 Items[{Slot:0b}].Count set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.Count
    # 必要なデータのみコピーする
        data modify storage mhdp_core:temp Temp set value {display:{},Status:{},CustomModelData:100,HideFlags:2,MhdpWeapon:1b,MhdpWeaponSub:0b,IsDrawing:0b}
        data modify storage mhdp_core:temp Temp.display set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.display
        data modify storage mhdp_core:temp Temp.Status set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status
    # 切れ味設定
        execute unless entity @s[tag=SklHandicraft] run data modify storage mhdp_core:temp Temp.Status.SharpnessCurrent set from storage mhdp_core:temp Temp.Status.SharpnessMax
        execute if entity @s[tag=SklHandicraft] run function mhdp_core:phase/2_quest_wait/start_quest/setup/weapon_craft
    # 納刀状態フラグ変更
        data modify storage mhdp_core:temp Temp.IsDrawing set value 0b
    # モデル変更
        data modify storage mhdp_core:temp Temp.CustomModelData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainWeapon.tag.Status.CmdOffset
    data modify block 0 0 0 Items[{Slot:0b}].tag set from storage mhdp_core:temp Temp

    # 退避した武器データをオフハンドにコピー
        item replace entity @s weapon.offhand from block 0 0 0 container.0

# オフハンドのアイテムを回収する
    execute if entity @s[tag=StoreOffItem] run function mhdp_weapons:core/check/off_give

# 武器種に応じてタグを付与
    # 1：弓
        execute if data storage mhdp_core:temp Temp.Status{WeaponType:1} run tag @s add PlyWpnBow
    # 2：大剣
        execute if data storage mhdp_core:temp Temp.Status{WeaponType:2} run tag @s add PlyWpnGsword
    # 3：片手剣
        execute if data storage mhdp_core:temp Temp.Status{WeaponType:3} run tag @s add PlyWpnSsword

# アイテム用
    tag @s remove ItmCoasCancel

# 終了
    data remove storage mhdp_core:temp Temp
    data remove storage mhdp_core:temp Temp2
    tag @s remove StoreOffItem
