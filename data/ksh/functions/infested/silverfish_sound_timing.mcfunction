# ストレージ代入
# 最小値
# scoreboard players operation @s kshInfestedSilverfishSoundMin = $kshSileverfishSoundTiming kshSileverfishSoundTiming
# execute store result storage ksh:silverfish_sound_timing min int 1 run scoreboard players operation @s kshInfestedSilverfishSoundMin /= @s kshInfestedStage

# ## 最大値
# scoreboard players operation @s kshInfestedSilverfishSoundMax = $kshSileverfishSoundTiming kshSileverfishSoundTiming
# execute store result storage ksh:silverfish_sound_timing max int 1 run scoreboard players operation @s kshInfestedSilverfishSoundMax -= @s kshInfestedStage

# ストレージ参照
function ksh:infested/silverfish_sound_timing_storage/save with entity @s {}

# 紙魚の音が鳴るタイミングをセット
execute store result score @s kshSileverfishSoundTiming run function ksh:infested/silverfish_sound_timing_set with entity @s {}