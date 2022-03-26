# 競技人数をリセット
data modify storage keiba_assistant: player set value 0
# レース終了
## tick.mcfunction用
scoreboard players reset $keiba keiba.race
## commandbook用
data modify storage keiba_assistant: status set value '{"translate":"storage.keiba_assistant.wait","color":"dark_red"}'
# タグの削除
tag @a remove keibatime
# 鞭取得をレース前に戻す
## 鞭を持っている人は鞭の回収を有効化
scoreboard players enable @a[scores={keiba.whip=1..}] keiba.clear
## 鞭を持っていない人は鞭の受け取りを有効化
execute unless entity @a[scores={keiba.whip=1..}] run scoreboard players enable @s keiba.give
# 時間の記録を消す
scoreboard players reset * keiba.time
# 順位リセット
scoreboard players reset * keiba.rank
# 鞭の使用可能回数を0に
scoreboard players set @a keiba.remain 0
# titleの表示時間を戻す
title @a reset
# ゲームルールをもとに戻す
gamerule keepInventory false
gamerule showDeathMessages true
gamerule sendCommandFeedback true
# 賭けアドオン用
function keiba_assistant:gamble/reset
# クイズアドオン用
function keiba_assistant:quiz/reset