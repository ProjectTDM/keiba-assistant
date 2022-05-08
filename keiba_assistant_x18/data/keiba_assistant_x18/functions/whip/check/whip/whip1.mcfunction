# 予約チェック
## 予約されていた場合
execute as @s if data storage keiba_assistant_x18: {whip:{1:'{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":1}]}'}} run function keiba_assistant_x18:whip/reserved
## 予約されていない場合
execute as @s if data storage keiba_assistant_x18: {whip:{1:'{"translate":"item.keiba_assistant.whip","color":"dark_green","with":[{"text":1}]}'}} run function keiba_assistant_x18:whip/give/whip1