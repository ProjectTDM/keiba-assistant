#何回もログが出ないように先にタグを消す
tag @s remove keibatime
tag @s remove keibakill
#タグ削除
tag @e[predicate=keiba_assistant:goal] remove keibagate1
tag @e[predicate=keiba_assistant:goal] remove keibagate2
tag @e[predicate=keiba_assistant:goal] remove keibagate3
tag @e[predicate=keiba_assistant:goal] remove keibagate4
#殺す
kill @s
#カスタムキルログ
tellraw @a {"translate":"tellraw.keiba_assistant.death","with":[{"selector":"@s"}]}