#ストレージ内の数字で残り何秒か判断
execute as @a if data storage keiba_assistant:count {1tick:80} run function keiba_assistant:countdown/3
execute as @a if data storage keiba_assistant:count {1tick:60} run function keiba_assistant:countdown/2
execute as @a if data storage keiba_assistant:count {1tick:40} run function keiba_assistant:countdown/1
execute as @a if data storage keiba_assistant:count {1tick:20} run function keiba_assistant:countdown/start