#> mhdp_core:phase/4_quest_cleared/back_home/setup/disable_datapack/disable
#
# Phase4_クエストクリア 帰還処理 データパック無効化

# 青鳥竜
    execute if data storage mhdp_core:temp Temp{Name:"Ranposu"} run function ranposu:manager/4_general/uninstall

# 火竜
    # execute if data storage mhdp_core:temp Temp{Name:"Reus"} run function asa_animator:reus/manager/0_init/0_summon/

# 雷狼竜
    # execute if data storage mhdp_core:temp Temp{Name:"Zinogre"} run function asa_animator:zinogre/manager/0_init/0_summon/

# 角竜
    # execute if data storage mhdp_core:temp Temp{Name:"Diablos"} run function asa_animator:diablos/manager/summon
