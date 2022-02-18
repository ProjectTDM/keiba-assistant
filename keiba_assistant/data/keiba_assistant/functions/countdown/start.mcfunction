#時間計測のため鞭を持っている人にtimeタグを与える
tag @a[predicate=keiba_assistant:whip/root] add keibatime
#それぞれの馬及び騎乗者ごとにタグを与える(このタグはそれぞれの鞭と連携している)
tag @e[predicate=keiba_assistant:gate/gate1] add keibagate1
tag @e[predicate=keiba_assistant:gate/gate2] add keibagate2
tag @e[predicate=keiba_assistant:gate/gate3] add keibagate3
tag @e[predicate=keiba_assistant:gate/gate4] add keibagate4
#$whipのkeiba.remainから鞭の使用可能回数を取得し、レース中のプレイヤー全員のkeiba.remainに代入
scoreboard players operation @a[tag=keibatime] keiba.remain = $whip keiba.remain
#タイムを表示
scoreboard objectives setdisplay sidebar keiba.time
#subtitleを削除
title @a subtitle {"text":""}
#スタート表示
title @a title {"translate":"title.keiba_assistant.start","bold":true}
#スタート音
playsound entity.player.levelup master @s
#順位リセット
scoreboard players reset $rank keiba.rank
#死んだときアイテムが飛び散らないように
gamerule keepInventory true
#カスタム死亡ログ(tellrawコマンド)を使う為無効化
gamerule showDeathMessages false