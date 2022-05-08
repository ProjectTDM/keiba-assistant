# 鞭データ更新用
## 2以上なら1にセット
scoreboard players set @s[scores={keiba.click=2..}] keiba.click 1
## 負荷軽減のため1のときのみブーストチェック
execute at @s[scores={keiba.click=1}] run function keiba_assistant_x18:boost/click