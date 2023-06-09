#> mhdp_weapons:sp_items/wirebug/using
#
# 翔蟲 tick処理

# タイマー増加
    execute if entity @s[scores={MhdpTItmWirebug=5..}] run scoreboard players add @s MhdpTItmWirebug 1
    execute if entity @s[tag=!PlySneakCurrent,scores={MhdpTItmWirebug=1..4}] run scoreboard players add @s MhdpTItmWirebug 1
    execute if entity @s[scores={MhdpTItmWirebug=..0}] run scoreboard players add @s MhdpTItmWirebug 1

# 糸演出
    execute if entity @s[scores={MhdpTItmWirebug=1..4}] run function mhdp_weapons:sp_items/wirebug/effect

# 移動
    execute if entity @s[scores={MhdpTItmWirebug=5}] run effect clear @s levitation
    execute if entity @s[scores={MhdpTItmWirebug=5}] run function mhdp_weapons:sp_items/wirebug/move

# ノックバック用に出していたMobを片づける
    execute if entity @s[scores={MhdpTItmWirebug=6}] run function mhdp_weapons:sp_items/wirebug/kill

# 終了
    execute if entity @s[tag=!PlyJumpping,scores={MhdpTItmWirebug=12..79}] run scoreboard players set @s MhdpTItmWirebug 80 
    execute if entity @s[scores={MhdpTItmWirebug=80..}] run function mhdp_weapons:sp_items/wirebug/end
