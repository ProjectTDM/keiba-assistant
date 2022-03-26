# ループしないようにリセット
scoreboard players reset @s keiba.give
# 予約済みに変更
data modify storage keiba_assistant: whip.1 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":1}]}'
# 鞭番号を記録 
scoreboard players set @s keiba.whip 1
# 鞭を付与
loot spawn ~ ~ ~ loot keiba_assistant:whip/whip1
# 与えたことを本人に通知
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"red","with":[{"text":"1"}]}]}
# キャンセルを有効化
scoreboard players enable @s keiba.clear