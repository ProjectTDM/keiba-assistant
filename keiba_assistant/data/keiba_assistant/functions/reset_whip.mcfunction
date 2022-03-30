# 通常リセット
function keiba_assistant:reset
# 鞭を回収
clear @a carrot_on_a_stick{tag:keibawhip}
# 鞭の予約のキャンセル
data modify storage keiba_assistant: whip.1 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":1}]}'
data modify storage keiba_assistant: whip.2 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":2}]}'
data modify storage keiba_assistant: whip.3 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":3}]}'
data modify storage keiba_assistant: whip.4 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":4}]}'
data remove storage keiba_assistant: whip.Name
# 鞭番号リセット
scoreboard players reset * keiba.whip
# 鞭取得のリセット
scoreboard players reset @a keiba.give
# 鞭返却のリセット
scoreboard players reset @a keiba.clear
# 鞭取得の有効化
scoreboard players enable @a keiba.give