#連続で実行されないようにtimeタグを外す
tag @s remove time
#チャット欄で順位表示
tellraw @s {"translate":"tellraw.keiba_assistant.winner","with":[{"selector":"@s"},{"score":{"name":"$rank","objective":"rank"},"color": "gold"},{"translate":"tellraw.keiba_assistant.rank","color": "gold"}]}
#次の人の順位を1つ下にするため値を加算
scoreboard players add $rank rank 1