# レース自動終了
## tick.mcfunction用
scoreboard players reset $keiba keiba.race
## commandbook用
data modify storage keiba_assistant_x18: status set value '{"translate":"storage.keiba_assistant.stop","color":"red"}'
# タグの削除
tag @a remove keibaboost
tag @a remove keibatime
# 鞭取得をレース前に戻す
## 鞭を持っている人は鞭の回収を有効化
scoreboard players enable @a[scores={keiba.whip=1..}] keiba.clear
## 鞭を持っていない人は鞭の受け取りを有効化
execute as @a unless entity @s[scores={keiba.whip=1..}] run scoreboard players enable @s keiba.give
# titleの表示時間を戻す
title @a reset
# ゲームルールを1秒後に戻す(すぐ戻すとプレイヤーのアイテムが消える可能性があるため)
schedule function keiba_assistant_x18:race/aftkill 1s