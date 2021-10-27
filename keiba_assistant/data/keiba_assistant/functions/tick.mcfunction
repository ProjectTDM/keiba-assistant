#タイム加算(tick)
scoreboard players add @a[tag=keibatime] keiba.time 1
#ニンジン棒を持っているか検知
execute as @a[predicate=keiba_assistant:carrot_on_a_stick] at @s run function keiba_assistant:carrot_on_a_stick
#ゴール検知(座標はゴールテープ)念の為5マス判定
execute as @a[predicate=keiba_assistant:goal] at @s run function keiba_assistant:goal
#クイズモード用タグ検知
execute as @a[predicate=keiba_assistant:goal,tag=keibakill,tag=keibatime] at @s run function keiba_assistant:death
#クイズモードの際不正解の人なら何もしないように(上のやつでtimeタグが消される)
execute as @a[predicate=keiba_assistant:goal,tag=!keibakill,tag=keibatime] at @s run function keiba_assistant:winner
#不正防止用
execute as @a[predicate=keiba_assistant:foul,tag=keibatime] at @s run function keiba_assistant:foul
#本関連
execute as @a[tag=!keibabook] at @s run function keiba_assistant:enable
function keiba_assistant:trigger