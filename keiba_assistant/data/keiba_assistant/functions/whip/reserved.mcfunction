# リピートされないようにreset
scoreboard players reset @s keiba.give
# 予約されていることを表示
tellraw @s {"translate":"tellraw.keiba_assistant.reserve"}
# 鞭取得を有効化
scoreboard players enable @s keiba.give