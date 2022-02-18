scoreboard players add @s keiba.tick 1
execute if score @s keiba.tick matches 20.. run function keiba_assistant:time/second
advancement revoke @s only keiba_assistant:tick