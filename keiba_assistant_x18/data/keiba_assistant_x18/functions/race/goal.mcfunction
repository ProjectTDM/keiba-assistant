# 連続で実行されないようにtimeタグを外す
tag @s remove keibatime
# 順位設定
scoreboard players add $keiba keiba.rank 1
# 順位をプレイヤーに代入
execute store result score @s keiba.rank run scoreboard players get $keiba keiba.rank
# チャット欄で順位表示
tellraw @a {"translate":"tellraw.keiba_assistant.winner","with":[{"selector":"@s"},{"score":{"name":"$keiba","objective":"keiba.rank"},"color":"gold"},{"translate":"tellraw.keiba_assistant.rank","color":"gold"}]}
# 競技人数を減らす
execute store result storage keiba_assistant_x18: player int 1 run data get storage keiba_assistant_x18: player 0.9999999999