#先にtimeタグを消すことでリタイヤ扱いに
tag @s remove time
#何回もログ出ないように先にタグを消す(多分大丈夫だけどラグがあったとき用)
tag @s remove kill
kill @s
#ここは「@sは不正解だったのでリタイアになった」でもいいかもしれない
tellraw @a ["",{"selector":"@s"},{"text":"は不正解だったので"},{"selector":"@a[tag=Questioner]"},{"text":"に殺された"}]