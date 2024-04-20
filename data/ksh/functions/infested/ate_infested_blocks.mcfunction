# 初回メッセージ
execute unless score @s kshInfestedStage = @s kshInfestedStage run title @s actionbar {"text":"這いずる気配を感じる…"}

# Sound
playsound minecraft:entity.silverfish.step player @s ~ ~ ~ 1 1

# Set infested stage
scoreboard players add @s kshInfestedStage 1

advancement revoke @s only ksh:infested/eat_infested_blocks