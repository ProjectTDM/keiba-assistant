#通常リセットは下のfunction内に入っているため省略
#鞭関連のリセット
function keiba_assistant:reset_whip
#システムのスコアボードの初期化(通常リセットの実行以外はscoreboard.mcfunctionと同じ)
##鞭の使用可能回数リセット
scoreboard players set $whip keiba.remain 10
##レース前のeffect付与を無効化
scoreboard players reset $race keiba.effect