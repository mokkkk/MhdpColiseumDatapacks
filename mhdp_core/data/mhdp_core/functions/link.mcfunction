

# モンスター追加時修正する共通処理

# init処理
## 肉質の設定
    function mhdp_core:init/monster_defence

# クエスト関連処理
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
