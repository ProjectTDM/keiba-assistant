#初期化
function keiba_assistant:reset_all
#インストール完了メッセージ(リソースパック必須)
tellraw @a {"translate":"tellraw.tunakan.welcome","with":[{"translate":"tellraw.keiba_assistant.welcome","color": "gold"}]}
tellraw @a {"translate":"tellraw.tunakan.creater","with":[{"text":"ツナ缶入りマザボ","color": "green"}]}