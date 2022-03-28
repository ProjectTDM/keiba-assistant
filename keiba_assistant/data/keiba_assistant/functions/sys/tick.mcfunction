# レース中なら実行(1→レース中)
execute if score $keiba keiba.race matches 1 run function keiba_assistant:race/
# レース中でなければ実行
execute unless score $keiba keiba.race matches 1 run function keiba_assistant:whip/check/
# 鞭データ更新用
## 2以上なら1にセット
scoreboard players set @a[scores={keiba.click=2..}] keiba.click 1
## 負荷軽減のため1のときのみブーストチェック
execute as @a[scores={keiba.click=1}] at @s run function keiba_assistant:boost/click
# カウントダウン表示用
execute unless data storage keiba_assistant: {countdown:0} run function keiba_assistant:countdown/root