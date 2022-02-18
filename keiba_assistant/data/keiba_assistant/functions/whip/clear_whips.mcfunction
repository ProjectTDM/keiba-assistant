#ログの無効化
gamerule sendCommandFeedback false
#鞭の回収
scoreboard players reset @s keiba.clear
execute if predicate keiba_assistant:whip/whip1 run function keiba_assistant:whip/take/whip1
execute if predicate keiba_assistant:whip/whip2 run function keiba_assistant:whip/take/whip2
execute if predicate keiba_assistant:whip/whip3 run function keiba_assistant:whip/take/whip3
execute if predicate keiba_assistant:whip/whip4 run function keiba_assistant:whip/take/whip4
#鞭のadvancementを削除
advancement revoke @s through keiba_assistant:whip/root
#鞭を返却したことの通知
tellraw @s {"translate":"tellraw.keiba_assistant.clear"}
#鞭取得の有効化
scoreboard players enable @s keiba.whip