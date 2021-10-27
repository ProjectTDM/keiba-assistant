scoreboard players reset @s keiba.whip_click
function keiba_assistant_color:boost/check8/check
execute if entity @s[tag=whipSucces8] run effect give @e[tag=gate8] speed 5 3
tag @s remove whipSucces8