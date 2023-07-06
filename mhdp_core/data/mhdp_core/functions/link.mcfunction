

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


# アイテムの追加時修正する共通処理

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
