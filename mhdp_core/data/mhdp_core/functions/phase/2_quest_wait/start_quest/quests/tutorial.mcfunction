#> mhdp_core:phase/2_quest_wait/start_quest/quests/tutorial
#
# Phase1_クエスト受注 クエストデータ割り当て

# 教官配置
    # positioned -36 66 95

# 質問カード配置
    clone 156 89 155 156 89 155 -34 66 97
    
# メッセージ初期化
    data modify storage mhdp_core:temp Tutorial.Messages set value []
    scoreboard players set #mhdp_temp_tutorial_timer MhdpCore 0

say 訓練開始処理：[mhdp_core:phase/2_quest_wait/start_quest/quests/tutorial]