scoreboard players add @s keiba.tick 1
execute if entity @s[scores={keiba.tick=20..}] run function keiba_assistant_color:time/second
advancement revoke @s only keiba_assistant_color:tick