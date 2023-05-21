#> mhdp_core:phase/4_quest_cleared/back_home/setup/tutorial
#
# Phase4_クエストクリア 帰還処理 訓練終了

# 教官削除

# 質問カード削除
    setblock -34 66 97 air
    clear @a paper{TutorialPaper:1b}
    kill @e[type=item,nbt={Item:{tag:{TutorialPaper:1b}}}]
