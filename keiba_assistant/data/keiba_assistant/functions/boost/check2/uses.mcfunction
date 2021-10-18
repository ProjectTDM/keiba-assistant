scoreboard players operation @s whip_click -= $whip_uses whip_Temporary
function keiba_assistant:boost/check2/check
execute if entity @s[tag=whipSucces2] run effect give @e[tag=gate2] speed 5 3
tag @s remove whipSucces2