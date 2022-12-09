# レース開始
## tick.mcfunction用
scoreboard players set $keiba keiba.race 1
## commandbook用
data modify storage keiba_assistant_x18: status set value '{"translate":"storage.keiba_assistant.race","color":"dark_green"}'
# 時間計測準備
execute as @a[scores={keiba.whip=1..}] run tag @s add keibatime
# 競技人数取得
execute store result storage keiba_assistant_x18: player int 1 if entity @a[tag=keibatime]
# 時間計測開始
schedule function keiba_assistant_x18:sys/time 1s
# $keibaのkeiba.remainから鞭の使用可能回数を取得し、レース中のプレイヤー全員のkeiba.remainに代入
scoreboard players operation @a[tag=keibatime] keiba.remain = $keiba keiba.remain
# 鞭の表示更新
item modify entity @s[predicate=keiba_assistant_x18:whip/have/main] weapon.mainhand keiba_assistant_x18:remain
item modify entity @s[predicate=keiba_assistant_x18:whip/have/off] weapon.offhand keiba_assistant_x18:remain
# タイムを表示
scoreboard objectives setdisplay sidebar keiba.time
# subtitleを削除
title @a subtitle {"text":""}
# スタート表示
title @a title {"translate":"title.keiba_assistant.start","bold":true}
# スタート音
playsound entity.player.levelup master @s