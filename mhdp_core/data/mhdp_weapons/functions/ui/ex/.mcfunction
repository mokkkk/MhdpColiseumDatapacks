#> mhdp_weapons:ui/ex/
#
# UI表示処理等 武器ごとの特殊ゲージ
#

# UI設定
    # data modify storage mhdp_core:temp Temp.UI.Ex set value '[{"text":"\\uF888\\uF888\\uF888\\uF888\\uF888\\uF888\\uF802","font":"default"}]'

# 太刀
    execute if entity @s[tag=PlyWpnLsword] run function mhdp_weapons:ui/ex/long_sword
