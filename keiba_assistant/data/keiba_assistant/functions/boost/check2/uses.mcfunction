scoreboard players reset @s keiba.whip_click
function keiba_assistant:boost/check2/check
execute if entity @s[tag=whipSucces2] run effect give @e[tag=gate2] speed 5 3
tag @s remove whipSucces2