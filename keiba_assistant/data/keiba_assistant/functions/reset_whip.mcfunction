#レース終了(tick.mcfunction用)
scoreboard players reset $keiba keiba.race
#ゲームルールをもとに戻す
gamerule keepInventory false
gamerule showDeathMessages true
gamerule sendCommandFeedback true
#レース前にeffectをつけた人のeffectを解除
execute as @a[tag=keibatime] if score $keiba keiba.effect matches 1 run effect clear @s
#タグの削除
tag @a remove keibatime
#プレイヤー名を取得するためのタグの付いたエンティティをkill
kill @e[tag=keibahead]
#鞭を回収/予約のキャンセル
clear @a crossbow{tag:keibawhip}
data modify storage keiba_assistant: whip.1 set value 0
data modify storage keiba_assistant: whip.2 set value 0
data modify storage keiba_assistant: whip.3 set value 0
data modify storage keiba_assistant: whip.4 set value 0
#鞭のadvancementを削除
advancement revoke @a through keiba_assistant:whip/root
#鞭の使用可能回数を0に
scoreboard players set @a keiba.remain 0
#鞭取得のリセット
scoreboard players reset @a keiba.whip
#鞭返却のリセット
scoreboard players reset @a keiba.clear
#時間の記録を消す
scoreboard players reset @a keiba.tick
scoreboard players reset @a keiba.time
#順位リセット
scoreboard players reset @a keiba.rank
scoreboard players reset $keiba keiba.rank
#titleの表示時間を戻す
title @a reset
#鞭取得の有効化
scoreboard players enable @a keiba.whip
#賭けアドオン用
function keiba_assistant:gamble/reset
#クイズアドオン用
function keiba_assistant:quiz/reset