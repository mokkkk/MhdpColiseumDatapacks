#> ranposu:manager/5_animation/damage_flying/
#
# 青鳥竜 アニメーションのイベントハンドラ 空中怯み

# 現在位置を影の表示位置に移動
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 1 on passengers if entity @s[tag=aj.ranposu.locator.shadow] on origin positioned as @s positioned ~ ~2 ~ as @e[tag=RanposuRoot] run tp @s ~ ~ ~ ~ 0

# 効果音
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.3
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 1 run playsound entity.phantom.bite master @a ~ ~ ~ 2 1.5
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 12 run particle block sandstone ~ ~ ~ 1 0.1 1 0 20 force
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 12 run playsound block.grass.step master @a ~ ~ ~ 2 1
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 12 run playsound entity.hoglin.step master @a ~ ~ ~ 2 1

# 移動
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 1 at @s run function ranposu:manager/5_animation/damage_flying/pos/set_pos
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 2..12 at @s run function ranposu:manager/5_animation/damage_flying/pos/offset

# 接地
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 13.. at @s if block ~ ~-0.1 ~ #asa_animator:no_collision at @s run function asa_animator:general/check_ground
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 13.. at @s unless block ~ ~ ~ #asa_animator:no_collision at @s run tp @s ~ ~0.1 ~ ~ ~

# 終了
    execute if score @s aj.ranposu.animation.damage_flying.local_anim_time matches 19.. run function ranposu:manager/5_animation/damage_flying/end
