scoreboard players reset @s keiba.whip_click
function keiba_assistant_color:boost/check13/check
execute if entity @s[tag=whipSucces13] run effect give @e[tag=gate13] speed 5 3
tag @s remove whipSucces13