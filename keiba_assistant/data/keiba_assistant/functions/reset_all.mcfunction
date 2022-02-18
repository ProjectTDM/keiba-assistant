#通常リセット
function keiba_assistant:reset
#鞭を回収/予約のキャンセル
execute as @a run function keiba_assistant:whip/take/whip1
execute as @a run function keiba_assistant:whip/take/whip2
execute as @a run function keiba_assistant:whip/take/whip3
execute as @a run function keiba_assistant:whip/take/whip4
#鞭のadvancementを削除
advancement revoke @a through keiba_assistant:whip/root
#鞭取得のリセット
scoreboard players reset @a keiba.whip
#鞭取得の有効化
scoreboard players enable @a keiba.whip
#鞭の使用可能回数リセット
scoreboard players set $whip keiba.remain 10
#レース前のeffect削除を有効化
scoreboard players set $race keiba.effectc 1