scoreboard players reset @s whip_click
function keiba_assistant_color:boost/check14/check
execute if entity @s[tag=whipSucces14] run effect give @e[tag=gate14] speed 5 3
tag @s remove whipSucces14