# レース自動終了
## tick.mcfunction用
scoreboard players reset $keiba keiba.race
## commandbook用
data modify storage keiba_assistant: status set value '{"translate":"storage.keiba_assistant.stop","color":"red"}'
# タグの削除
tag @a remove keibaboost
tag @a remove keibatime