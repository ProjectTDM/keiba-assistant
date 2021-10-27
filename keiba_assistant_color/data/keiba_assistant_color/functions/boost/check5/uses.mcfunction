scoreboard players reset @s keiba.whip_click
function keiba_assistant_color:boost/check5/check
execute if entity @s[tag=whipSucces5] run effect give @e[tag=gate5] speed 5 3
tag @s remove whipSucces5