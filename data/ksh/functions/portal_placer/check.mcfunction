execute unless score $kshPlacedPortal kshPlacedPortal = $kshPlacedPortal kshPlacedPortal run function ksh:portal_placer/place
execute as @s[tag=!kshPlaced] run schedule function ksh:portal_placer/reset_score 5s
# execute if score $kshPlacedPortal kshPlacedPortal matches ..1 run function ksh:portal_placer/place
kill @s