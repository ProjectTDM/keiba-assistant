scoreboard players reset @s keiba.whip_click
function keiba_assistant_color:boost/check16/check
execute if entity @s[tag=whipSucces16] run effect give @e[tag=gate16] speed 5 3
tag @s remove whipSucces16