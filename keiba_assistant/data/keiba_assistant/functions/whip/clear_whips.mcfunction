#ログの無効化
gamerule sendCommandFeedback false
#鞭の回収
scoreboard players reset @s keiba.clear
clear @s crossbow{tag:keibawhip}
execute as @s[advancements={keiba_assistant:whip/whip1=true}] run data modify storage keiba_assistant: whip.1 set value 0
execute as @s[advancements={keiba_assistant:whip/whip2=true}] run data modify storage keiba_assistant: whip.2 set value 0
execute as @s[advancements={keiba_assistant:whip/whip3=true}] run data modify storage keiba_assistant: whip.3 set value 0
execute as @s[advancements={keiba_assistant:whip/whip4=true}] run data modify storage keiba_assistant: whip.4 set value 0
#鞭のadvancementを削除
advancement revoke @s through keiba_assistant:whip/root
#鞭を返却したことの通知
tellraw @s {"translate":"tellraw.keiba_assistant.clear"}
#鞭取得の有効化
scoreboard players enable @s keiba.whip