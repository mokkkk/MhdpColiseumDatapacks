#> mhdp_core:monster/
#
# 各モンスターが毎tick実行する処理

# 青鳥竜
    execute if entity @s[tag=RanposuRoot] run function ranposu:manager/main

# 火竜
    execute if entity @s[tag=ReusRoot] run function reus:manager/main

# 雷狼竜
    # execute if entity @s[tag=ZinogreRoot] run function asa_animator:zinogre/main