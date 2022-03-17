# レース終了(tick.mcfunction用)
scoreboard players reset $keiba keiba.race
# ゲームルールをもとに戻す
gamerule keepInventory false
gamerule showDeathMessages true
gamerule sendCommandFeedback true
# タグの削除
tag @a remove keibatime
# 鞭取得をレース前に戻す
## 鞭を持っている人は鞭の回収を有効化
scoreboard players enable @a[advancements={keiba_assistant:whip/root=true}] keiba.clear
## 鞭を持っていない人は鞭の受け取りを有効化
scoreboard players enable @a[advancements={keiba_assistant:whip/root=false}] keiba.whip
# 時間の記録を消す
scoreboard players reset @a keiba.tick
scoreboard players reset @a keiba.time
# 順位リセット
scoreboard players reset @a keiba.rank
scoreboard players reset $keiba keiba.rank
# 鞭の使用可能回数を0に
scoreboard players set @a keiba.remain 0
# titleの表示時間を戻す
title @a reset
# 賭けアドオン用
function keiba_assistant:gamble/reset
# クイズアドオン用
function keiba_assistant:quiz/reset