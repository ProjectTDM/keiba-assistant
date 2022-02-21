#(クイズモード用)不正解ならkill
execute as @e[predicate=keiba_assistant:race/goal,tag=keibaqwrong,tag=keibatime] at @s run function keiba_assistant:quiz/race/wrong
#不正解でなければゴール表示
execute as @e[predicate=keiba_assistant:race/goal,tag=!keibaqwrong,tag=keibatime] at @s run function keiba_assistant:race/goal
#不正防止用
execute as @e[predicate=keiba_assistant:race/foul,tag=keibatime] at @s run function keiba_assistant:race/foul
#本を無効化
scoreboard players reset @a keiba.whip
scoreboard players reset @a keiba.clear