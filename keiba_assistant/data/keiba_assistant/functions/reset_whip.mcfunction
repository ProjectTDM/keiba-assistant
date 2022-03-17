# 通常リセット
function keiba_assistant:reset
# プレイヤー名を取得するためのタグの付いたエンティティをkill
kill @e[tag=keibahead]
# 鞭を回収/予約のキャンセル
clear @a carrot_on_a_stick{tag:keibawhip}
data modify storage keiba_assistant: reserve.1 set value 0
data modify storage keiba_assistant: reserve.2 set value 0
data modify storage keiba_assistant: reserve.3 set value 0
data modify storage keiba_assistant: reserve.4 set value 0
# 鞭のadvancementを削除
advancement revoke @a through keiba_assistant:whip/root
# 鞭取得のリセット
scoreboard players reset @a keiba.whip
# 鞭返却のリセット
scoreboard players reset @a keiba.clear
# 時間の記録を消す
scoreboard players reset @a keiba.tick
scoreboard players reset @a keiba.time
# 順位リセット
scoreboard players reset @a keiba.rank
scoreboard players reset $keiba keiba.rank
# 鞭取得の有効化
scoreboard players enable @a keiba.whip
# 賭けアドオン用
function keiba_assistant:gamble/reset
# クイズアドオン用
function keiba_assistant:quiz/reset