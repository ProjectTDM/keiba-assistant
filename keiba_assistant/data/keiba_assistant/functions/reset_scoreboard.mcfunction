#通常リセット
function keiba_assistant:reset
#鞭の使用可能回数リセット
scoreboard players set $whip keiba.remain 10
#レース前のeffect付与を無効化
scoreboard players reset $race keiba.effect