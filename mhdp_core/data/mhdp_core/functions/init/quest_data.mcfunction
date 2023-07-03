#> mhdp_core:init/quest_data
#
# クエストデータ初期化

# 出現モンスター：
# - 0：最初から
# - 1：Targetモンスターが倒されたら
# - 2：TargetモンスターのHPが50%以下になったら
# - 3：一定時間経過

# storage初期化
    data remove storage mh_dp:quests List
    data modify storage mh_dp:quests List set value []

# テンプレート
# data modify storage mh_dp:quests List append value {Index:999,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,Reward:3,RewardItems:[],Movie:0b,MovieId:-1,display:{Name:'[{"text":"-","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・","italic":false}']},NameNew:'{"text":"-(NEW)","italic":false}',NameClear:'{"text":-(CLEAR)","italic":false}'}

## 0：訓練
# なにもなし
    data modify storage mh_dp:quests List append value {Index:0,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[],MonsterCount:1,Timer:999,HpMult:100,AtkMult:100,Reward:15,RewardItems:[],Movie:0b,MovieId:-1,display:{Name:'[{"text":"訓練","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・何もなし","italic":false}']},NameNew:'{"text":"訓練(NEW)","italic":false}',NameClear:'{"text":"訓練(CLEAR)","italic":false}'}

## 1：青鳥竜
# ノーマル・大闘技場・[青鳥竜]・15分・HP100%・ATK149%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:1,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Ranposu",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,AtkMult:149,Reward:3,RewardItems:[{Name:"Ranposu",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"青鳥竜","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・青鳥竜の討伐","italic":false}']},NameNew:'{"text":"青鳥竜(NEW)","italic":false}',NameClear:'{"text":"青鳥竜(CLEAR)","italic":false}'}

## 2：青鳥竜テスト用
# ノーマル・大闘技場・[青鳥竜]・9999分・HP100%・ATK149%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:2,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Ranposu",Condition:0,Target:-1}],MonsterCount:1,Timer:9999,HpMult:100,AtkMult:500,Reward:3,RewardItems:[{Name:"Ranposu",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"めっちゃ強い青鳥竜","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・青鳥竜の討伐","italic":false}']},NameNew:'{"text":"めっちゃ強い青鳥竜(NEW)","italic":false}',NameClear:'{"text":"めっちゃ強い青鳥竜(CLEAR)","italic":false}'}

## 999：青鳥竜テスト用
# ノーマル・大闘技場・[青鳥竜]・9999分・HP100%・ATK149%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:999,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Ranposu",Condition:0,Target:-1}],MonsterCount:1,Timer:9999,HpMult:100,AtkMult:149,Reward:3,RewardItems:[{Name:"Ranposu",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"青鳥竜（テスト）","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・青鳥竜の討伐","italic":false}']},NameNew:'{"text":"青鳥竜(NEW)","italic":false}',NameClear:'{"text":"青鳥竜(CLEAR)","italic":false}'}

say クエストデータstorageを初期化しました
function mhdp_core:phase/0_village/villager/quest/