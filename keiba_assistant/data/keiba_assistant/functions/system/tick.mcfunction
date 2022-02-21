#レース中なら実行(1→レース中)
execute if score $race keiba.race matches 1 run function keiba_assistant:race/
#レース中でなければ鞭を渡す
execute as @a unless score $race keiba.race matches 1 run function keiba_assistant:whip/
#耐久値の更新および再装填
execute as @a[predicate=keiba_assistant:have/whip] run function keiba_assistant:reload/main
execute as @a[predicate=keiba_assistant:have/whip_offhand] run function keiba_assistant:reload/off
#カウントダウン表示用(at @sがないと音が鳴らない)
execute as @a at @s unless data storage keiba_assistant:count {1tick:0} run function keiba_assistant:countdown/root