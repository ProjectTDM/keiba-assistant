#連続で実行されないようにtimeタグを外す
tag @s remove time
#チャット欄で順位表示
tellraw @a ["",{"selector":"@s"},{"text":"さんが"},{"score":{"name":"$runk","objective":"runk"},"color": "gold"},{"text":"位","color": "gold"},{"text":"でゴールしました！"}]
#次の人の順位を1つ下にするため値を加算
scoreboard players add $runk runk 1