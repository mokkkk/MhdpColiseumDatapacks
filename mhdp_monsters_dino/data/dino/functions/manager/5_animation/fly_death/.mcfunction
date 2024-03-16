#> reus:manager/5_animation/fly_death/
#
# 火竜 アニメーションのイベントハンドラ 着地

# 現在位置を影の表示位置に移動
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 1 on passengers if entity @s[tag=aj.reus.locator.shadow] on origin positioned as @s positioned ~ ~2 ~ as @e[tag=ReusRoot] run tp @s ~ ~ ~ ~ 0

# 移動
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 5 rotated ~ 0 run function reus:manager/5_animation/fly_death/pos/set_pos
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 5..18 at @s run function reus:manager/5_animation/fly_death/pos/offset

# まばたき
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 1 run function reus:manager/7_model/head_blink

# 効果音
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 18 run playsound entity.hoglin.step master @a ~ ~ ~ 2 0.7
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 18 run particle block sand ~ ~0.1 ~ 1.5 0 1.5 0 20
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 1..5 run playsound entity.ravager.hurt master @a[distance=..48] ~ ~ ~ 1 0.5 0.4

# 状態変更
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 19 run tag @s remove StateIsFlying

# 終了
    execute if score @s aj.reus.animation.fly_death.local_anim_time matches 139.. run function reus:manager/5_animation/fly_death/end
