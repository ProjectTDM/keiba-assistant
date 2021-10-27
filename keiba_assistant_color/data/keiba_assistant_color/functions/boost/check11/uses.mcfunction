scoreboard players reset @s keiba.whip_click
function keiba_assistant_color:boost/check11/check
execute if entity @s[tag=whipSucces11] run effect give @e[tag=gate11] speed 5 3
tag @s remove whipSucces11