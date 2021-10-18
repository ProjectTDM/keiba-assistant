scoreboard players reset @s whip_click
function keiba_assistant_color:boost/check15/check
execute if entity @s[tag=whipSucces15] run effect give @e[tag=gate15] speed 5 3
tag @s remove whipSucces15