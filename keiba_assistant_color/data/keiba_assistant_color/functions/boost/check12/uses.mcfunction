scoreboard players reset @s whip_click
function keiba_assistant_color:boost/check12/check
execute if entity @s[tag=whipSucces12] run effect give @e[tag=gate12] speed 5 3
tag @s remove whipSucces12