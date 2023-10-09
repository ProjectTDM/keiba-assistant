# scoreboard設定
## にんじん付き棒のクリック検知
scoreboard objectives add keiba.click used:carrot_on_a_stick
## 鞭を持っているか検知
scoreboard objectives add keiba.have dummy
## レース中かどうか
scoreboard objectives add keiba.race dummy
## 順位
scoreboard objectives add keiba.rank dummy
## 使用可能回数
scoreboard objectives add keiba.remain dummy {"translate":"scoreboard.keiba_assistant.remain"}
## レース時間
scoreboard objectives add keiba.time dummy {"translate":"scoreboard.keiba_assistant.time"}
# 初期化
function keiba_assistant:default
# インストール済みにする
data modify storage keiba_assistant: installed set value 1
# インストール完了メッセージ(リソースパック必須)
tellraw @a {"translate":"tellraw.tunakan.welcome","with":[{"translate":"tellraw.keiba_assistant.welcome","color":"gold","with":[{"text":""}]}]}
tellraw @a {"translate":"tellraw.tunakan.creator","with":[{"text":"ツナ缶入りマザボ","color":"green"}]}