#(クイズモード用)不正解なら殺される
execute as @a[predicate=keiba_assistant:goal,tag=keibakill,tag=keibatime] at @s run function keiba_assistant:death
#不正解でなければゴール表示
execute as @a[predicate=keiba_assistant:goal,tag=!keibakill,tag=keibatime] at @s run function keiba_assistant:goal
#不正防止用
execute as @a[predicate=keiba_assistant:foul,tag=keibatime] at @s run function keiba_assistant:foul
#本を無効化
scoreboard players reset @a keiba.whip
scoreboard players reset @a keiba.clear
#カウントダウン表示用(at @sがないと音が鳴らない)
execute as @a at @s unless data storage keiba_assistant:count {1tick:0} run function keiba_assistant:countdown/root