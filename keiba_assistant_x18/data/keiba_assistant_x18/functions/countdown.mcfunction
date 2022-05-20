# リセット
function keiba_assistant_x18:sys/reset
# カウントダウン開始(commandbook用)
data modify storage keiba_assistant_x18: status set value '{"translate":"storage.keiba_assistant.countdown","color":"gold"}'
# titleの表示時間変更
title @a times 10 15 10
# 時間設定
data modify storage keiba_assistant_x18: countdown set value 81
# カウントダウンスタート
function keiba_assistant_x18:countdown/