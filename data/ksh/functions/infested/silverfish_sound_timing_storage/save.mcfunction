# 自分のUUIDがなければリストの最後に書き込み
$execute unless data storage ksh:silverfish_sound_timing data[{UUID:$(UUID)}] run data modify storage ksh:silverfish_sound_timing data append value {UUID:$(UUID)}

# 最小値
scoreboard players operation @s kshInfestedSilverfishSoundMin = $kshSileverfishSoundTiming kshSileverfishSoundTiming
$execute store result storage ksh:silverfish_sound_timing data[{UUID:$(UUID)}].min int 20 run scoreboard players operation @s kshInfestedSilverfishSoundMin /= @s kshInfestedStage

# 最大値
scoreboard players operation @s kshInfestedSilverfishSoundMax = $kshSileverfishSoundTiming kshSileverfishSoundTiming
$execute store result storage ksh:silverfish_sound_timing data[{UUID:$(UUID)}].max int 20 run scoreboard players operation @s kshInfestedSilverfishSoundMax -= @s kshInfestedStage