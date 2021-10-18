scoreboard players reset @s whip_click
function keiba_assistant:boost/check4/check
execute if entity @s[tag=whipSucces4] run effect give @e[tag=gate4] speed 5 3
tag @s remove whipSucces4