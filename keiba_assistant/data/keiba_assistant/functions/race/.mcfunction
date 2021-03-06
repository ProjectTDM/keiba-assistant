# ゴール表示
execute as @a[predicate=keiba_assistant:race/goal,tag=keibatime] at @s run function keiba_assistant:race/goal
# 不正防止用
execute as @a[predicate=keiba_assistant:race/foul,tag=keibatime] at @s run function keiba_assistant:race/foul
# 本を無効化
scoreboard players reset @a keiba.give
scoreboard players reset @a keiba.clear
# 競技者が誰もいない場合停止
execute if data storage keiba_assistant: {player:0} run function keiba_assistant:sys/autostop