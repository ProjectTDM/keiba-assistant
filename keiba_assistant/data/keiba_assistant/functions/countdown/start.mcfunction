# レース開始
## tick.mcfunction用
scoreboard players set $keiba keiba.race 1
## commandbook用
data modify storage keiba_assistant: status set value '{"translate":"storage.keiba_assistant.race","color":"dark_green"}'
# 時間計測準備
## 鞭の所有チェック
scoreboard players reset * keiba.have
execute store success score @s keiba.have run clear @s carrot_on_a_stick{tag:keibawhip} 0
## 鞭を所有しているプレーヤーをレースに参加させる
execute if score @s keiba.have matches 1 run tag @s add keibatime
# 競技人数取得
execute store result storage keiba_assistant: player int 1 if entity @a[tag=keibatime]
# 時間計測開始
schedule function keiba_assistant:sys/time 1s
# $keibaのkeiba.remainから鞭の使用可能回数を取得し、レース中のプレイヤー全員のkeiba.remainに代入
scoreboard players operation @a[tag=keibatime] keiba.remain = $keiba keiba.remain
# 鞭の表示更新
item modify entity @s[predicate=keiba_assistant:whip/have/main] weapon.mainhand keiba_assistant:remain
item modify entity @s[predicate=keiba_assistant:whip/have/off] weapon.offhand keiba_assistant:remain
# タイムを表示
scoreboard objectives setdisplay sidebar keiba.time
# subtitleを削除
title @a subtitle {"text":""}
# スタート表示
title @a title {"translate":"title.keiba_assistant.start","bold":true}
# スタート音
playsound entity.player.levelup master @s