# Infested stage square
scoreboard players operation @s kshInfestedStageSquare = @s kshInfestedStage
scoreboard players operation @s kshInfestedStageSquare *= @s kshInfestedStageSquare

# Timer
scoreboard players add @s kshInfestedStageTimer 1
execute if score @s kshInfestedStage matches 4.. run scoreboard players add @s kshInfestingDamageInterval 1
execute if score @s kshInfestedStage matches 3.. run scoreboard players add @s kshSilverfishSoundTimer 1

# 紙魚音タイマーが指定したタイミングに到達
execute if score @s kshSilverfishSoundTimer = @s kshSileverfishSoundTiming run function ksh:infested/playsound_silverfish

# 死亡時
execute as @s[nbt={Health:0.0f}] at @s positioned ~ ~1 ~ if predicate ksh:summon_silverfish_count run function ksh:infested/summon_silverfish
execute if score @s kshTimeStampfromLastDeath matches 1.. run scoreboard players reset @s kshSilverfishSummonedCount

# 進捗解除
advancement revoke @s only ksh:infested/tick
