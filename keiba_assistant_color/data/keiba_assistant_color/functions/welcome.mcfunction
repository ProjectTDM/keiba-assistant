#初期化
function keiba_assistant_color:reset_all
#インストール完了メッセージ(リソースパック必須)
tellraw @a {"translate":"tellraw.tunakan.welcome","with":[{"translate":"tellraw.keiba_assistant_color.welcome","color": "gold"}]}
tellraw @a {"translate":"tellraw.tunakan.creater","with":[{"text":"ツナ缶入りマザボ","color": "green"}]}