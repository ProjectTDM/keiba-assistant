#タイム加算(tick)
scoreboard players add @a[tag=time] time 1
#ニンジン棒を持っているか検知
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function keiba_assistant:carrot_on_a_stick
#ゴール検知(座標はゴールテープ)念の為5マス判定
execute as @a[x=-41,y=69,z=402,dx=8,dz=5] at @s run function keiba_assistant:goal
#クイズモード用タグ検知
execute as @a[x=-41,y=69,z=402,dx=8,dz=5,tag=kill] at @s run function keiba_assistant:death
#クイズモードの際不正解の人なら何もしないように(上のやつでtimeタグが消される)
execute as @a[x=-41,y=69,z=402,dx=8,dz=5,tag=!kill,tag=time] at @s run function keiba_assistant:winner
#不正防止用
execute positioned as @a[tag=time] if block ~ ~-2 ~ minecraft:blue_ice run function keiba_assistant:foul
execute as @a[x=-41,y=69,z=413,dx=8,dz=3,tag=time] at @s run function keiba_assistant:foul_goal