scoreboard players reset @s whip_click
function keiba_assistant_color:boost/check6/check
execute if entity @s[tag=whipSucces6] run effect give @e[tag=gate6] speed 5 3
tag @s remove whipSucces6