scoreboard players reset @s keiba.whip_click
function keiba_assistant_color:boost/check10/check
execute if entity @s[tag=whipSucces10] run effect give @e[tag=gate10] speed 5 3
tag @s remove whipSucces10