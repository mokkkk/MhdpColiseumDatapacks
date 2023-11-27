#> mhdp_core:init/quest_data
#
# クエストデータ初期化

# Condition：モンスター出現条件
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

## 3：火竜
# ノーマル・大闘技場・[火竜]・15分・HP100%・ATK149%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:3,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:15,HpMult:100,AtkMult:149,Reward:3,RewardItems:[{Name:"Reus",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"火竜","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},NameNew:'{"text":"火竜(NEW)","italic":false}',NameClear:'{"text":"火竜(CLEAR)","italic":false}'}

## 4：火竜テスト用
# ノーマル・大闘技場・[火竜]・9999分・HP100%・ATK149%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:4,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:9999,HpMult:100,AtkMult:149,Reward:3,RewardItems:[{Name:"Reus",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"火竜時間無制限","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},NameNew:'{"text":"火竜時間無制限(NEW)","italic":false}',NameClear:'{"text":"火竜時間無制限(CLEAR)","italic":false}'}

## 5：火竜テスト用
# ノーマル・大闘技場・[火竜]・9999分・HP10%・ATK149%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:5,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Reus",Condition:0,Target:-1}],MonsterCount:1,Timer:9999,HpMult:10,AtkMult:149,Reward:3,RewardItems:[{Name:"Reus",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"火竜げきよわ","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・火竜の討伐","italic":false}']},NameNew:'{"text":"火竜げきよわ(NEW)","italic":false}',NameClear:'{"text":"火竜げきよわ(CLEAR)","italic":false}'}

## 999：青鳥竜テスト用
# ノーマル・大闘技場・[青鳥竜]・9999分・HP10000%・ATK100%・報酬3Z・ムービー無
    data modify storage mh_dp:quests List append value {Index:999,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Ranposu",Condition:0,Target:-1}],MonsterCount:1,Timer:9999,HpMult:10000,AtkMult:100,Reward:3,RewardItems:[{Name:"Ranposu",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"サンドバッグ","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・青鳥竜の討伐","italic":false}']},NameNew:'{"text":"サンドバッグ(NEW)","italic":false}',NameClear:'{"text":"青鳥竜(CLEAR)","italic":false}'}

## 以下記入例
    # 複数匹召喚
    # TargetはMonsters.index + 1を指定（eg. 1匹目のモンスターを参照する場合，Target:1）
    # data modify storage mh_dp:quests List append value {Index:0,Level:0,Visible:1b,Started:0b,Cleared:0b,QuestRank:0,Field:1,Monsters:[{Name:"Ranposu",Condition:0,Target:-1},{Name:"Reus",Condition:0,Target:1}],MonsterCount:1,Timer:9999,HpMult:100,AtkMult:149,Reward:3,RewardItems:[{Name:"Ranposu",Count:8,Min:4}],Movie:0b,MovieId:-1,display:{Name:'[{"text":"青鳥竜（テスト）","italic":false},{"interpret":true,"nbt":"Temp.Flag","storage":"mhdp_core:temp"}]',Lore:['{"text":"目標："}','{"text":"・青鳥竜の討伐","italic":false}']},NameNew:'{"text":"青鳥竜(NEW)","italic":false}',NameClear:'{"text":"青鳥竜(CLEAR)","italic":false}'}

say クエストデータstorageを初期化しました
function mhdp_core:phase/0_village/villager/quest/