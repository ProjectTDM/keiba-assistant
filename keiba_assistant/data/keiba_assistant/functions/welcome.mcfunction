#初期化
function keiba_assistant:reset_all
#インストール完了メッセージ(リソースパック必須)
tellraw @a {"translate":"tellraw.tunakan.welcome","with":[{"translate":"tellraw.keiba_assistant.welcome","color": "gold"},{"text": "[v3.0.1]","color": "gold"}]}
tellraw @a {"translate":"tellraw.tunakan.creater","with":[{"text":"ツナ缶入りマザボ","color": "green"}]}