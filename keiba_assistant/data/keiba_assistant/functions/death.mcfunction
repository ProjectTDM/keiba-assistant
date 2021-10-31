#先にtimeタグを消すことでリタイヤ扱いに
tag @s remove keibatime
#何回もログ出ないように先にタグを消す(多分大丈夫だけどラグがあったとき用)
tag @s remove keibakill
kill @s
#カスタムキルログ
tellraw @a {"translate":"tellraw.keiba_assistant.death","with":[{"selector":"@s"}]}