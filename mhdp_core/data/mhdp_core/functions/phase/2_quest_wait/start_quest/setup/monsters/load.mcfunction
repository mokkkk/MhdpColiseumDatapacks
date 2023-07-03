#> mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/load
#
# Phase1_クエスト受注 クエスト開始処理 データパック読み込み 分岐

# 青鳥竜
    execute if data storage mhdp_core:temp Temp{Name:"Ranposu"} run datapack enable "file/mhdp_monsters_ranposu"

# 火竜
    # execute if data storage mhdp_core:temp Temp{Name:"Reus"} run function asa_animator:reus/manager/0_init/0_summon/

# 雷狼竜
    # execute if data storage mhdp_core:temp Temp{Name:"Zinogre"} run function asa_animator:zinogre/manager/0_init/0_summon/

# 角竜
    # execute if data storage mhdp_core:temp Temp{Name:"Diablos"} run function asa_animator:diablos/manager/summon
