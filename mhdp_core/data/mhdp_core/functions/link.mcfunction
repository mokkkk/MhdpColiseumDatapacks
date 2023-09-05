
################################################################################################
# モンスター追加時修正する共通処理

# init処理
## 肉質の設定
    function mhdp_core:init/monster_defence

# クエスト関連処理
## データパック読み込み処理
    function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/load
    function mhdp_core:phase/4_quest_cleared/back_home/setup/disable_datapack/disable
## 召喚処理
    function mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/summon
## 乱入処理
    function mhdp_core:phase/3_quest/check/monsters/summon
## 削除処理
    function mhdp_core:phase/4_quest_cleared/back_home/setup/despawn_monster

# Core処理
## モンスターダメージ処理
    function asa_animator:general/damage
## モンスターメイン処理
    function mhdp_core:monster/
## 攻撃ターゲットリセット処理
    function asa_animator:general/reset_target

################################################################################################

################################################################################################
# 特殊装具の追加時修正する共通処理

# validate関連
## クエスト開始時チェック
    function mhdp_core:phase/1_quest_received/departure/check_2_sp_item_kind
    function mhdp_core:phase/1_quest_received/departure/check_3_sp_item_count

# クエスト関連
## 特殊装具取得処理
    function mhdp_core:phase/2_quest_wait/start_quest/setup/sp_items/
## リセット処理
    function mhdp_core:phase/4_quest_cleared/back_home/setup/item
    function mhdp_weapons:sp_items/reset_all
## 一部アイテム用リセット処理
#  不動の装衣など，持続効果の特殊装具用のリセット
#  プレイヤー死亡時に呼び出される
    function mhdp_weapons:sp_items/reset
## 投げ捨て処理
    function mhdp_weapons:sp_items/drop/give
## UI表示処理
    function mhdp_weapons:ui/item/
################################################################################################

################################################################################################
# アイテムの追加時修正する共通処理

# クエスト開始時
## アイテムを使用できるものに置き換える
    function mhdp_core:phase/2_quest_wait/start_quest/setup/consumable_items/

# クエスト中
## プレイヤーアイテム使用時のメイン処理
    function mhdp_core:player/item/

# クエスト終了時
## アイテムを使用不可のものに置き換える
    function mhdp_core:phase/4_quest_cleared/back_home/setup/consumable_items/

################################################################################################

################################################################################################
# 武器の追加時修正する共通処理

# init
## 攻撃力
    function mhdp_core:init/player_attack

# クエスト開始時
## 所持武器判別用タグ付与・スコア初期化
    function mhdp_core:phase/2_quest_wait/start_quest/setup/weapon

# クエスト中
## 各武器メイン処理への分岐
    function mhdp_weapons:weapon/
## 各武器抜刀処理への分岐
    function mhdp_weapons:core/draw/weapon
## 各武器納刀処理への分岐
    function mhdp_weapons:core/sheathe/weapon
## 各武器中断処理への分岐
    function mhdp_weapons:core/interruption/
## 各武器リセット処理への分岐
    function mhdp_weapons:core/reset/weapon
## 各武器直接攻撃処理への分岐
    function mhdp_weapons:core/attack/weapon
## 武器の切れ味更新処理への分岐
    function mhdp_weapons:core/attack/attack_by_mhdp_skill
## (optional)武器の特殊UI表示
    function mhdp_weapons:ui/ex/
## (optional)フレーム回避時の処理分岐
    function mhdp_core:player/damage/player_avoid

# クエスト終了時
## 所持武器判別用タグを消去する
    function mhdp_core:phase/4_quest_cleared/back_home/setup/weapon

################################################################################################