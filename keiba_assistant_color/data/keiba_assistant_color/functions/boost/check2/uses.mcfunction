scoreboard players reset @s whip_click
function keiba_assistant_color:boost/check2/check
execute if entity @s[tag=whipSucces2] run effect give @e[tag=gate2] speed 5 3
tag @s remove whipSucces2