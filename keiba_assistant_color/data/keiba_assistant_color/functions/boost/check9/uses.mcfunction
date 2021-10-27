scoreboard players reset @s keiba.whip_click
function keiba_assistant_color:boost/check9/check
execute if entity @s[tag=whipSucces9] run effect give @e[tag=gate9] speed 5 3
tag @s remove whipSucces9