#> mhdp_core:player/damage/knockback/voice/1
#
# プレイヤーノックバック開始処理

# ガード確認
    function mhdp_core:player/damage/knockback/voice/guard

# スキル確認
    execute if entity @s[tag=SklEarplugsLv2] run tag @s add NotKnockback

# アーマー確認
    execute if entity @s[tag=PlyArmorHyper] run tag @s add NotKnockback

# 特殊装具確認
    execute if entity @s[tag=ItmUseImmovable] run tag @s add NotKnockback

# フレーム回避確認
    execute if entity @s[scores={MhdpTAvoid=1..}] run function mhdp_core:player/damage/player_avoid
    execute if entity @s[scores={MhdpTDamage=1..}] run tag @s add NotKnockback

# スキルで無効化されていない場合，怯み処理実行
    execute unless entity @s[tag=NotKnockback] run function mhdp_core:player/damage/knockback/voice/1_

# 終了
    tag @s remove NotKnockback
