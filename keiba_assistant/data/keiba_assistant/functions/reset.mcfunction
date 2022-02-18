#タグの削除
tag @a remove keibatime
tag @a remove keibakill
tag @e remove keibagate1
tag @e remove keibagate2
tag @e remove keibagate3
tag @e remove keibagate4
#レース終了(tick.mcfunction用)
scoreboard players reset $race keiba.race
#時間の記録を消す
scoreboard players reset @a keiba.tick
scoreboard players reset @a keiba.time
#順位リセット
scoreboard players reset @a keiba.rank
#鞭クリックのadvancementを削除
advancement revoke @a through keiba_assistant:click/root
#鞭の使用可能回数を0に
scoreboard players set @a keiba.remain 0
#鞭取得をレース前に戻す
##鞭を持っている人は鞭の回収を有効化
scoreboard players enable @a[predicate=keiba_assistant:whip/root] keiba.clear
##鞭を持っていない人は鞭の受け取りを有効化
scoreboard players enable @a[predicate=!keiba_assistant:whip/root] keiba.whip
#ゲームルールをもとに戻す
gamerule keepInventory false
gamerule showDeathMessages true
gamerule sendCommandFeedback true
#titleの表示時間を戻す
title @a reset
#賭けアドオン用
function keiba_assistant:gambling/reset