#通常リセット
function keiba_assistant:reset
#プレイヤー名を取得するためのタグの付いたエンティティをkill
kill @e[tag=keibahead]
#鞭を回収/予約のキャンセル
execute as @a run function keiba_assistant:whip/take/whip1
execute as @a run function keiba_assistant:whip/take/whip2
execute as @a run function keiba_assistant:whip/take/whip3
execute as @a run function keiba_assistant:whip/take/whip4
#鞭のadvancementを削除
advancement revoke @a through keiba_assistant:whip/root
#鞭取得のリセット
scoreboard players reset @a keiba.whip
#鞭返却のリセット
scoreboard players reset @a keiba.clear
#鞭取得の有効化
scoreboard players enable @a keiba.whip