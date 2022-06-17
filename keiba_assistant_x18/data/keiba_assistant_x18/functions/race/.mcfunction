# 不正解でなければゴール表示
execute as @a[predicate=keiba_assistant_x18:race/goal,tag=keibatime] at @s run function keiba_assistant_x18:race/goal
# 不正防止用
execute as @a[predicate=keiba_assistant_x18:race/foul,tag=keibatime] at @s run function keiba_assistant_x18:race/foul
# 本を無効化
scoreboard players reset @a keiba.give
scoreboard players reset @a keiba.clear