# 通常リセット
function keiba_assistant_x18:reset
# 鞭を回収
clear @a carrot_on_a_stick{tag:keibawhip}
# 鞭の予約のキャンセル
data modify storage keiba_assistant_x18: whip.1 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":1}]}'
data modify storage keiba_assistant_x18: whip.2 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":2}]}'
data modify storage keiba_assistant_x18: whip.3 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":3}]}'
data modify storage keiba_assistant_x18: whip.4 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":4}]}'
data modify storage keiba_assistant_x18: whip.5 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":5}]}'
data modify storage keiba_assistant_x18: whip.6 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":6}]}'
data modify storage keiba_assistant_x18: whip.7 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":7}]}'
data modify storage keiba_assistant_x18: whip.8 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":8}]}'
data modify storage keiba_assistant_x18: whip.9 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":9}]}'
data modify storage keiba_assistant_x18: whip.10 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":10}]}'
data modify storage keiba_assistant_x18: whip.11 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":11}]}'
data modify storage keiba_assistant_x18: whip.12 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":12}]}'
data modify storage keiba_assistant_x18: whip.13 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":13}]}'
data modify storage keiba_assistant_x18: whip.14 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":14}]}'
data modify storage keiba_assistant_x18: whip.15 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":15}]}'
data modify storage keiba_assistant_x18: whip.16 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":16}]}'
data modify storage keiba_assistant_x18: whip.17 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":17}]}'
data modify storage keiba_assistant_x18: whip.18 set value '{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":18}]}'
data remove storage keiba_assistant_x18: whip.Name
# 鞭番号リセット
scoreboard players reset * keiba.whip
# 鞭取得のリセット
scoreboard players reset @a keiba.give
# 鞭返却のリセット
scoreboard players reset @a keiba.clear
# 鞭取得の有効化
scoreboard players enable @a keiba.give