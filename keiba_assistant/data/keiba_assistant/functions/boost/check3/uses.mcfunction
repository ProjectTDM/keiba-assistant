scoreboard players operation @s whip_click -= $whip_uses whip_Temporary
function keiba_assistant:boost/check3/
execute if entity @s[tag=whipSucces3] run effect give @e[tag=gate3] speed 3 4
tag @s remove whipSucces3