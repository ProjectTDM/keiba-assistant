#カウントダウン以外countdown.mcfunctionと同じものを実行
##リセット
function keiba_assistant:reset
##レース開始(tick.mcfunction用)
scoreboard players set $keiba keiba.race 1
##賭けアドオン用
function keiba_assistant:gamble/countdown
##titleの表示時間変更
title @a times 10 15 10
##本を無効化
scoreboard players reset @a keiba.whip
scoreboard players reset @a keiba.clear
##死んだときアイテムが飛び散らないように
gamerule keepInventory true
##カスタム死亡ログ(tellrawコマンド)を使う為無効化
gamerule showDeathMessages false
##カウントダウンスタート
data modify storage keiba_assistant: countdown set value 81
function keiba_assistant:countdown/
#countdown/start.mcfunctionと同じものを実行
##時間計測のため鞭を持っている人にtimeタグを与える
tag @a[advancements={keiba_assistant:whip/root=true}] add keibatime
##スタート前effectが無効化されているときに馬と騎乗者のeffect解除
execute unless score $keiba keiba.effect matches 1 run effect clear @e[predicate=keiba_assistant:gate/root]
##馬と騎乗者のeffect付与(1→有効)
execute if score $keiba keiba.effect matches 1 run function keiba_assistant:effect
##$keibaのkeiba.remainから鞭の使用可能回数を取得し、レース中のプレイヤー全員のkeiba.remainに代入
scoreboard players operation @a[tag=keibatime] keiba.remain = $keiba keiba.remain
##タイムを表示
scoreboard objectives setdisplay sidebar keiba.time
##subtitleを削除
title @a subtitle {"text":""}
##スタート表示
title @a title {"translate":"title.keiba_assistant.start","bold":true}
##スタート音
playsound entity.player.levelup master @s