#> mhdp_weapons:sp_items/drop/give
#
# 特殊装具投げ捨て時

# storageにデータ退避
    data modify storage mhdp_core:temp Temp.ItemData set from entity @s

# 1001:不動の装衣
    execute if data storage mhdp_core:temp Temp.ItemData.Item.tag{MhdpItemId:1001} on origin run clear @s carrot_on_a_stick{MhdpItemId:1001}
    execute if data storage mhdp_core:temp Temp.ItemData.Item.tag{MhdpItemId:1001} on origin run give @s carrot_on_a_stick{display:{Name:'{"text":"不動の装衣","color":"green","italic":false}',Lore:['{"text":"[特殊装具]","italic":false}','{"text":"--------------------","color":"dark_gray"}','{"text":"一定時間の間，","color":"white","italic":false}','{"text":"ノックバックを無効化する．","color":"white","italic":false}','{"text":"受けるダメージも軽減する．","color":"white","italic":false}','{"text":"--------------------","color":"dark_gray"}']},MhdpItem:1b,MhdpItemType:2,MhdpItemId:1001,CustomModelData:1001,HideFlags:34,MhdpSpItem:1b}

# 1002:翔蟲
    execute if data storage mhdp_core:temp Temp.ItemData.Item.tag{MhdpItemId:1002} on origin run clear @s carrot_on_a_stick{MhdpItemId:1002}
    execute if data storage mhdp_core:temp Temp.ItemData.Item.tag{MhdpItemId:1002} on origin run give @p carrot_on_a_stick{display:{Name:'{"text":"翔蟲","color":"green","italic":false}',Lore:['{"text":"[特殊装具]","italic":false}','{"text":"--------------------","color":"dark_gray"}','{"text":"正面方向に糸を伸ばし，","color":"white","italic":false}','{"text":"高速で移動する．","color":"white","italic":false}','{"text":"","color":"white","italic":false}','{"text":"--------------------","color":"dark_gray"}']},MhdpItem:1b,MhdpItemType:2,MhdpItemId:1002,CustomModelData:1002,HideFlags:34,MhdpSpItem:1b}

# 投げた特殊装具を削除
    kill @s
