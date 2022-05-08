# レース中なら実行(1→レース中)
execute if score $keiba keiba.race matches 1 run function keiba_assistant:race/
# レース中でなければ実行
execute unless score $keiba keiba.race matches 1 run function keiba_assistant:whip/check/
# 鞭用
execute as @a[predicate=keiba_assistant:whip/have/carrot_on_a_stick] run function keiba_assistant:boost/pre_check
# カウントダウン表示用
execute unless data storage keiba_assistant: {countdown:0} run function keiba_assistant:countdown/root