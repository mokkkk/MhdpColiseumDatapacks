#> mhdp_weapons:weapon/long_sword/0_tick/sheathe
#
# 太刀：納刀検知
#

# 斬りおろし
    execute if entity @s[tag=WpnLsword2Vertical,scores={MhdpWeaponTimer=13..30}] run tag @s add IsDrawing
# 気刃斬り1_失敗
    execute if entity @s[tag=WpnLsword3Spirit1Miss,scores={MhdpWeaponTimer=12..}] run tag @s add IsDrawing
# 気刃斬り1
    execute if entity @s[tag=WpnLsword4Spirit1,scores={MhdpWeaponTimer=12..}] run tag @s add IsDrawing
# 気刃斬り2
    execute if entity @s[tag=WpnLsword5Spirit2,scores={MhdpWeaponTimer=12..}] run tag @s add IsDrawing
# 気刃斬り3
    execute if entity @s[tag=WpnLsword6Spirit3,scores={MhdpWeaponTimer=28..}] run tag @s add IsDrawing
# 斬り下がり
    execute if entity @s[tag=WpnLsword7Moveslash,scores={MhdpWeaponTimer=12..}] run tag @s add IsDrawing
# 気刃大回転斬り
    execute if entity @s[tag=WpnLsword14SpiritFinish,scores={MhdpWeaponTimer=15..}] run tag @s add IsDrawing
# 踏み込み斬り
    execute if entity @s[tag=WpnLsword15FrontMoveSlash,scores={MhdpWeaponTimer=12..}] run tag @s add IsDrawing
# 気刃踏み込み斬り
    execute if entity @s[tag=WpnLsword16SpiritMoveSlash,scores={MhdpWeaponTimer=12..}] run tag @s add IsDrawing
# 特殊納刀
    execute if entity @s[tag=WpnLsword18SpSheathe,scores={MhdpWeaponTimer=31..}] run tag @s add IsDrawing
    execute if entity @s[tag=WpnLsword18SpSheathe,scores={MhdpWeaponTimer=31..}] run tag @s add IsAttack

# 納刀操作成功時，特殊抜刀処理を行う
    execute if entity @s[tag=IsDrawing] run function mhdp_weapons:weapon/long_sword/94_draw_in_sheathe/

# 特殊納刀開始
    execute if entity @s[tag=IsDrawing,tag=!IsAttack] run function mhdp_weapons:weapon/long_sword/18_sp_sheathe/start

# 居合抜刀斬り
    execute if entity @s[tag=IsDrawing,tag=IsAttack] run function mhdp_weapons:weapon/long_sword/19_iai/start

# 終了
    tag @s remove IsAttack
