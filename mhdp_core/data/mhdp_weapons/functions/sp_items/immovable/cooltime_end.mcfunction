#> mhdp_weapons:sp_items/immovable/cooltime_end
#
# 不動の装衣 tick処理

# タグ更新
    tag @s remove ItmCoolImmovable

# 通知
    tellraw @s {"text": "【不動の装衣が再使用可能になった】"}
