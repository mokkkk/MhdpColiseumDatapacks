#> mhdp_core:phase/2_quest_wait/start_quest/setup/monsters/summon
#
# Phase1_クエスト受注 クエスト開始処理 モンスター召喚 分岐

# 火竜
    execute if data storage mhdp_core:temp Temp{Name:"Reus"} run function asa_animator:reus/manager/0_init/0_summon/

# 雷狼竜
    execute if data storage mhdp_core:temp Temp{Name:"Zinogre"} run function asa_animator:zinogre/manager/0_init/0_summon/

# 角竜
    # execute if data storage mhdp_core:temp Temp{Name:"Diablos"} run function asa_animator:diablos/manager/summon
