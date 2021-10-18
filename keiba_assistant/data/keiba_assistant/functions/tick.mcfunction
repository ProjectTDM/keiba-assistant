#タイム加算(tick)
scoreboard players add @a[tag=time] time 1
#ニンジン棒を持っているか検知
execute as @a[predicate=keiba_assistant:carrot_on_a_stick] at @s run function keiba_assistant:carrot_on_a_stick
#ゴール検知(座標はゴールテープ)念の為5マス判定
execute as @a[predicate=keiba_assistant:goal] at @s run function keiba_assistant:goal
#クイズモード用タグ検知
execute as @a[predicate=keiba_assistant:goal,tag=kill] at @s run function keiba_assistant:death
#クイズモードの際不正解の人なら何もしないように(上のやつでtimeタグが消される)
execute as @a[predicate=keiba_assistant:goal,tag=!kill,tag=time] at @s run function keiba_assistant:winner
#不正防止用
execute as @a[predicate=keiba_assistant:foul,tag=time] at @s run function keiba_assistant:foul