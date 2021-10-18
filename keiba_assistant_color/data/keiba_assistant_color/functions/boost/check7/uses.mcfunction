scoreboard players reset @s whip_click
function keiba_assistant_color:boost/check7/check
execute if entity @s[tag=whipSucces7] run effect give @e[tag=gate7] speed 5 3
tag @s remove whipSucces7