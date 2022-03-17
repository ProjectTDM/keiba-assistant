# 初期化
function keiba_assistant:reset_all
# インストール済みにする
scoreboard players set $keiba keiba. 1
# バージョン設定(v4.0.0=1)
scoreboard players set $keiba keiba.ver 1
# インストール完了メッセージ(リソースパック必須)
tellraw @a {"translate":"tellraw.tunakan.welcome","with":[{"translate":"tellraw.keiba_assistant.welcome","color":"gold"}]}
tellraw @a {"translate":"tellraw.tunakan.creater","with":[{"text":"ツナ缶入りマザボ","color":"green"}]}