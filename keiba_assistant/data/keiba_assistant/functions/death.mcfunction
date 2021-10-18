#先にtimeタグを消すことでリタイヤ扱いに
tag @s remove time
#何回もログ出ないように先にタグを消す(多分大丈夫だけどラグがあったとき用)
tag @s remove kill
kill @s
#カスタムキルログ
tellraw @s {"translate":"tellraw.keiba_assistant.death","with":[{"selector":"@s"}]}