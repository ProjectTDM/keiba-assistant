scoreboard players operation @s whip_click -= $whip_uses whip_Temporary
function keiba_assistant:boost/check4/check
execute if entity @s[tag=whipSucces4] run effect give @e[tag=gate4] speed 3 4
tag @s remove whipSucces4