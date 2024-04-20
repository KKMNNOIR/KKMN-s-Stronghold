scoreboard objectives add kshInfestedStage dummy
scoreboard objectives add kshInfestedStageSquare dummy
scoreboard objectives add kshInfestedStageTimer dummy
scoreboard objectives add kshInfestedSilverfishSoundMin dummy
scoreboard objectives add kshInfestedSilverfishSoundMax dummy
scoreboard objectives add kshSilverfishSoundTimer dummy
scoreboard objectives add kshSileverfishSoundTiming dummy
scoreboard objectives add kshSilverfishSound10 dummy
scoreboard objectives add kshSilverfishSummonedCount dummy
scoreboard objectives add kshInfestingDamageInterval dummy
scoreboard objectives add kshTimeStampfromLastDeath minecraft.custom:minecraft.time_since_death

scoreboard players set $kshSileverfishSoundTiming kshSileverfishSoundTiming 10

execute unless data storage ksh:silverfish_sound_timing data[].UUID run data merge storage ksh:silverfish_sound_timing {data:[]}