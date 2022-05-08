# scoreboard設定
## にんじん付き棒のクリック検知
scoreboard objectives add keiba.click used:carrot_on_a_stick
## レース中かどうか
scoreboard objectives add keiba.race dummy
## 順位
scoreboard objectives add keiba.rank dummy
## 使用可能回数
scoreboard objectives add keiba.remain dummy {"translate":"scoreboard.keiba_assistant.remain"}
## レース時間
scoreboard objectives add keiba.time dummy {"translate":"scoreboard.keiba_assistant.time"}
## 鞭番号記録
scoreboard objectives add keiba.whip dummy
## 本関連
scoreboard objectives add keiba.give trigger
scoreboard objectives add keiba.clear trigger
# 初期化
function keiba_assistant_x18:default
# インストール済みにする
data modify storage keiba_assistant_x18: installed set value 1
# インストール完了メッセージ(リソースパック必須)
tellraw @a {"translate":"tellraw.tunakan.welcome","with":[{"translate":"tellraw.keiba_assistant_x18.welcome","color":"gold"}]}
tellraw @a {"translate":"tellraw.tunakan.creator","with":[{"text":"ツナ缶入りマザボ","color":"green"}]}