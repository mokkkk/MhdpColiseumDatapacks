#> mhdp_core:player/util/jump_to_move_vector
#
# 移動ベクトルにstrengthを加算してDeltaを実行する

# 移動ベクトル計算
    function oh_my_dat:please
    execute store result score #mhdp_temp_x_0 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Pre[0] 10000
    execute store result score #mhdp_temp_y_0 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Pre[1] 10000
    execute store result score #mhdp_temp_z_0 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Pre[2] 10000
    execute store result score #mhdp_temp_x_1 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Current[0] 10000
    execute store result score #mhdp_temp_y_1 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Current[1] 10000
    execute store result score #mhdp_temp_z_1 MhdpCore run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerData.Pos.Current[2] 10000
    execute store result score $x delta.api.launch run scoreboard players operation #mhdp_temp_x_1 MhdpCore -= #mhdp_temp_x_0 MhdpCore
    execute store result score $y delta.api.launch run scoreboard players operation #mhdp_temp_y_1 MhdpCore -= #mhdp_temp_y_0 MhdpCore
    execute store result score $z delta.api.launch run scoreboard players operation #mhdp_temp_z_1 MhdpCore -= #mhdp_temp_z_0 MhdpCore
    scoreboard players operation $y delta.api.launch += $strength delta.api.launch

# 飛ぶ
    function delta:api/launch_xyz
        
# 終了
    scoreboard players reset #mhdp_temp_x_0
    scoreboard players reset #mhdp_temp_y_0
    scoreboard players reset #mhdp_temp_z_0
    scoreboard players reset #mhdp_temp_x_1
    scoreboard players reset #mhdp_temp_y_1
    scoreboard players reset #mhdp_temp_z_1
