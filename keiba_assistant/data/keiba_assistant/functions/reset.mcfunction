# 競技人数をリセット
data modify storage keiba_assistant: player set value 0
# レース終了
## tick.mcfunction用
scoreboard players reset $keiba keiba.race
## commandbook用
data modify storage keiba_assistant: status set value '{"translate":"storage.keiba_assistant.wait","color":"dark_red"}'
# タグの削除
tag @a remove keibaboost
tag @a remove keibatime
# 時間の記録を消す
scoreboard players reset * keiba.time
# 順位リセット
scoreboard players reset * keiba.rank
# 鞭の使用可能回数を0に
scoreboard players set @a keiba.remain 0
# titleの表示時間を戻す
title @a reset
# ゲームルールをもとに戻す
gamerule keepInventory false
gamerule showDeathMessages true
gamerule doImmediateRespawn false