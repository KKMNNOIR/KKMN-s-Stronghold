execute as @s[nbt={Facing:2b}] at @s run setblock ~ ~1 ~2 minecraft:stone_button[facing=south,face=wall,powered=false]
execute as @s[nbt={Facing:3b}] at @s run setblock ~ ~1 ~-2 minecraft:stone_button[facing=north,face=wall,powered=false]
execute as @s[nbt={Facing:4b}] at @s run setblock ~2 ~1 ~ minecraft:stone_button[facing=east,face=wall,powered=false]
execute as @s[nbt={Facing:5b}] at @s run setblock ~-2 ~1 ~ minecraft:stone_button[facing=west,face=wall,powered=false]
execute if block ^ ^1 ^-2 minecraft:stone_button run kill @s