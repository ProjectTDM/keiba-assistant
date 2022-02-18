#リセット
function keiba_assistant:reset
#レース開始(tick.mcfunction用)
scoreboard players set $race keiba.race 1
#馬と騎乗者のeffectクリア(1→有効)
execute as @e[predicate=keiba_assistant:gate/root] if score $race keiba.effectc matches 1 run effect clear @s
#賭けアドオン用
function keiba_assistant:gambling/countdown
#titleの表示時間変更
title @a times 10 15 10
#本を無効化
scoreboard players reset @a keiba.whip
scoreboard players reset @a keiba.clear
#ニンジン付きの棒のクリック進捗をリセット(スタートした瞬間にブーストを使い切らないように)
advancement revoke @a through keiba_assistant:click/root
#カウントダウンスタート
data modify storage keiba_assistant:count 1tick set value 85
function keiba_assistant:countdown/