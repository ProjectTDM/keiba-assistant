# ストレージ内の数字で残り何秒か判断(at @sがないと音が鳴らない)
execute as @a at @s if data storage keiba_assistant_x18: {countdown:80} run function keiba_assistant_x18:countdown/3
execute as @a at @s if data storage keiba_assistant_x18: {countdown:60} run function keiba_assistant_x18:countdown/2
execute as @a at @s if data storage keiba_assistant_x18: {countdown:40} run function keiba_assistant_x18:countdown/1
execute as @a at @s if data storage keiba_assistant_x18: {countdown:20} run function keiba_assistant_x18:countdown/start