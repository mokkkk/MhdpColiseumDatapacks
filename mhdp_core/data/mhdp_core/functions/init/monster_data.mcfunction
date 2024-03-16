#> mhdp_core:init/monster_data
#
# モンスターデータ初期化
# データ参照用のストレージ名を保持する

# storage初期化
    data remove storage mh_dp:monsters MonsterIdList
    data modify storage mh_dp:monsters MonsterIdList set value []

# 0：青鳥竜
    data modify storage mh_dp:monsters MonsterIdList append value "Ranposu"

# 1：火竜
    data modify storage mh_dp:monsters MonsterIdList append value "Reus"

# 2：斬竜
    data modify storage mh_dp:monsters MonsterIdList append value "Dino"

say モンスターデータを初期化しました