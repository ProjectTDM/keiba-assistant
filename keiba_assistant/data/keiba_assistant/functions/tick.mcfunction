#レース中なら実行(1→レース中)
execute if score $race keiba.race matches 1 run function keiba_assistant:race
#レース中でなければ鞭を渡す
execute unless score $race keiba.race matches 1 run function keiba_assistant:whip/
#耐久値の更新および再装填
execute as @a[predicate=keiba_assistant:whip/have] run function keiba_assistant:boost/reload