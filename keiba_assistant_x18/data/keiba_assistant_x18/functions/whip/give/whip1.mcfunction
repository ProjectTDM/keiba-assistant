# ループしないようにリセット
scoreboard players reset @s keiba.give
# 予約済みに変更
data modify storage keiba_assistant_x18: whip.1 set value '{"translate":"item.keiba_assistant.whip","color":"dark_red","with":[{"text":1}]}'
# 取得者名取得
## 頭を召喚
loot spawn ~ -129 ~ loot keiba_assistant_x18:playerhead
## storageに代入
data modify storage keiba_assistant_x18: whip.Name.1 set from entity @e[type=item,distance=..1,y=-129,limit=1] Item.tag.SkullOwner.Name
# 鞭番号を記録 
scoreboard players set @s keiba.whip 1
# 鞭を付与
loot spawn ~ ~ ~ loot keiba_assistant_x18:whip/whip1
# 与えたことを本人に通知
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"red","with":[{"text":"1"}]}]}
# キャンセルを有効化
scoreboard players enable @s keiba.clear