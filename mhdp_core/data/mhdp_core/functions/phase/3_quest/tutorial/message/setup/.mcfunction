#> mhdp_core:phase/3_quest/tutorial/message/setup/
#
# Phase3_クエスト中 訓練中処理 メッセージ呼び出し処理

# メッセージ初期化
    data modify storage mhdp_core:temp Tutorial.Messages set value []
    scoreboard players set #mhdp_temp_tutorial_timer MhdpCore 0

# データ取得準備
    function oh_my_dat:please

## 特殊
# 0:何も持っていない場合
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand run function mhdp_core:phase/3_quest/tutorial/message/setup/0_default

## 質問カード
# 1:基本的な立ち回りについて
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{TutorialPaper:1b,TutorialId:1} run say 基本的な立ち回りについて
# 2:武器の基本操作
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{TutorialPaper:1b,TutorialId:2} run function mhdp_core:phase/3_quest/tutorial/message/setup/2_weapon

## 武器
# 10:弓 地の型
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b,Status:{WeaponType:1}} run say 弓

# 12:大剣 地の型
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b,Status:{WeaponType:2}} run say 大剣

# 14:片手剣 地の型
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Item.MainHand.tag{MhdpWeapon:1b,Status:{WeaponType:3}} run say 片手剣

## 特殊装具
# 100:翔蟲

## アイテム
# 1000:

# 終了
    tag @s remove PlyCallTutorialMessage
