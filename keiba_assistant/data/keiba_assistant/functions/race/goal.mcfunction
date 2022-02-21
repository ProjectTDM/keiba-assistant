#連続で実行されないようにtimeタグを外す
tag @s remove keibatime
#順位設定
execute if entity @s[type=player] run scoreboard players add $rank keiba.rank 1
#順位をプレイヤーに代入
execute store result score @s[type=player] keiba.rank run scoreboard players get $rank keiba.rank
#チャット欄で順位表示
execute if entity @s[type=player] run tellraw @a {"translate":"tellraw.keiba_assistant.winner","with":[{"selector":"@s[type=player]"},{"score":{"name":"$rank","objective":"keiba.rank"},"color":"gold"},{"translate":"tellraw.keiba_assistant.rank","color":"gold"}]}
#effectを削除
effect clear @s