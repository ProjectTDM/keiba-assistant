#リセット
function keiba_assistant:reset
#レース開始(tick.mcfunction用)
scoreboard players set $keiba keiba.race 1
#賭けアドオン用
function keiba_assistant:gamble/countdown
#titleの表示時間変更
title @a times 10 15 10
#本を無効化
scoreboard players reset @a keiba.whip
scoreboard players reset @a keiba.clear
#カウントダウンスタート
data modify storage keiba_assistant: countdown set value 81
function keiba_assistant:countdown/