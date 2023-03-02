# 鞭取得済タグを追加
tag @s add keibahave
# 鞭を付与
loot give @s loot keiba_assistant:whip
# 与えたことを本人に通知
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip"}]}