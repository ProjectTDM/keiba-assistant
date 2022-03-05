#リピートされないようにreset
scoreboard players reset @s keiba.whip
#誰が予約しているか表示(名前部分はデフォルトの鞭の色に対応)
tellraw @s {"translate":"tellraw.keiba_assistant.reserve","with":[{"nbt":"whip.1","storage":"keiba_assistant:","color":"red"}]}
#鞭取得を有効化
scoreboard players enable @s keiba.whip