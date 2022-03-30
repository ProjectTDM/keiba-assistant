# リセット
function keiba_assistant:reset
# カウントダウン開始(commandbook用)
data modify storage keiba_assistant: status set value '{"translate":"storage.keiba_assistant.countdown","color":"gold"}'
# 賭けアドオン用
function keiba_assistant_gamble:countdown
# titleの表示時間変更
title @a times 10 15 10
# 時間設定
data modify storage keiba_assistant: countdown set value 81
# カウントダウンスタート
function keiba_assistant:countdown/