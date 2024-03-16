#> mhdp_monsters_core:1.init/1.main
#
# モンスターの初期化処理 共通データ
# mhdp_core:temp Temp.MonsterData に対象のデータを格納してから呼び出す

# HP関連初期化
    function mhdp_monsters_core:1.init/2.init_hp with storage mhdp_core:temp Temp.MonsterData.Core

# その他値
    # 閃光玉耐性時間
        execute store result score @s MhdpMonsterStatus.Flashbomb.Resistance run data get storage mhdp_core:temp Temp.MonsterData.Core.FlashbombResistance

# bool値適用
    execute if data storage mhdp_core:temp Temp.MonsterData.Core.IsEnableShockTrap run tag @s add Mns.Status.IsEnableShockTrap
    execute if data storage mhdp_core:temp Temp.MonsterData.Core.IsEnablePitfallTrap run tag @s add Mns.Status.IsEnablePitfallTrap
    execute if data storage mhdp_core:temp Temp.MonsterData.Core.IsEnableFlashbomb run tag @s add Mns.Status.IsEnableFlashbomb
    execute if data storage mhdp_core:temp Temp.MonsterData.Core.IsEnableSoundbomb run tag @s add Mns.Status.IsEnableSoundbomb
    execute if data storage mhdp_core:temp Temp.MonsterData.Core.IsEnableParalyze run tag @s add Mns.Status.IsEnableParalyze
