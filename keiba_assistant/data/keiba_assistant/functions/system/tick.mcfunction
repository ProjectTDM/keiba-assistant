# レース中なら実行(1→レース中)
execute if score $keiba keiba.race matches 1 run function keiba_assistant:race/
# レース中でなければ実行
execute unless score $keiba keiba.race matches 1 run function keiba_assistant:whip/
# 鞭データ更新用
execute as @a[advancements={keiba_assistant:whip/root=true}] at @s if score @s keiba.click matches 1.. run function keiba_assistant:boost/check
# カウントダウン表示用
execute unless data storage keiba_assistant: {countdown:0} run function keiba_assistant:countdown/root