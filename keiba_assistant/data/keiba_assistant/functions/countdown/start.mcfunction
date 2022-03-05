#時間計測のため鞭を持っている人にtimeタグを与える
tag @a[advancements={keiba_assistant:whip/root=true}] add keibatime
#スタート前effectが無効化されているときに馬と騎乗者のeffect解除
execute unless score $keiba keiba.effect matches 1 run effect clear @e[predicate=keiba_assistant:gate/root]
#馬と騎乗者のeffect付与(1→有効)
execute if score $keiba keiba.effect matches 1 run function keiba_assistant:effect
#$keibaのkeiba.remainから鞭の使用可能回数を取得し、レース中のプレイヤー全員のkeiba.remainに代入
scoreboard players operation @a[tag=keibatime] keiba.remain = $keiba keiba.remain
#タイムを表示
scoreboard objectives setdisplay sidebar keiba.time
#subtitleを削除
title @a subtitle {"text":""}
#スタート表示
title @a title {"translate":"title.keiba_assistant.start","bold":true}
#スタート音
playsound entity.player.levelup master @s
#死んだときアイテムが飛び散らないように
gamerule keepInventory true
#カスタム死亡ログ(tellrawコマンド)を使う為無効化
gamerule showDeathMessages false