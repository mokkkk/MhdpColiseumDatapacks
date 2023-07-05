#> mhdp_core:phase/2_quest_wait/prepare/forceload
#
# Phase1_クエスト受注 フィールドのforceload

# クエストデータ初期化
    data remove storage mh_dp:status GameStatus.Quest
    scoreboard players reset #mhdp_quest_monster_count

# 対象クエストを配列から取得
    # 配列コピー
        data modify storage array_util: Array set from storage mh_dp:quests List
    # 目標の添字を設定
        scoreboard players operation $Move ArrayUtilInput = #mhdp_quest_id MhdpCore
    # 移動
        function array_util:api/move
    # 配列コピー
        data modify storage array_util: Array set from storage array_util: Array[-1]

# フィールド：
    data modify storage mh_dp:status GameStatus.Quest.Field set from storage array_util: Array.Field
        # 大闘技場：ID 1
           execute if data storage mh_dp:status GameStatus.Quest{Field:1} positioned -138 70 55 run forceload add ~ ~ 132 98

# 終了
    function array_util:api/force_delete_cache
