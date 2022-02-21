#ログの無効化
gamerule sendCommandFeedback false
#鞭の回収
scoreboard players reset @s keiba.clear
execute as @a[advancements={keiba_assistant:whip/whip1=true}] run function keiba_assistant:whip/take/whip1
execute as @a[advancements={keiba_assistant:whip/whip2=true}] run function keiba_assistant:whip/take/whip2
execute as @a[advancements={keiba_assistant:whip/whip3=true}] run function keiba_assistant:whip/take/whip3
execute as @a[advancements={keiba_assistant:whip/whip4=true}] run function keiba_assistant:whip/take/whip4
#鞭のadvancementを削除
advancement revoke @s through keiba_assistant:whip/root
#鞭を返却したことの通知
tellraw @s {"translate":"tellraw.keiba_assistant.clear"}
#鞭取得の有効化
scoreboard players enable @s keiba.whip