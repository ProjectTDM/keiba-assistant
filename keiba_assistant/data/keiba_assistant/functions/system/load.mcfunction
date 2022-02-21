#スコアボード設定
##使用可能回数
scoreboard objectives add keiba.remain dummy {"translate":"scoreboard.keiba_assistant.remain"}
##順位
scoreboard objectives add keiba.rank dummy
##レース時間(tick)
scoreboard objectives add keiba.tick dummy
##レース時間(秒)
scoreboard objectives add keiba.time dummy {"translate":"scoreboard.keiba_assistant.time"}
##レース中かどうか
scoreboard objectives add keiba.race dummy
##レース前のeffect付与を有効にするか
scoreboard objectives add keiba.effect dummy "effect"
#本関連
scoreboard objectives add keiba.whip trigger
scoreboard objectives add keiba.clear trigger
#インストールされているかどうか(されていなければ初期化)
scoreboard objectives add keiba. dummy
#アップデート用
scoreboard objectives add keiba.ver dummy
#以上表記なのはv2.2~v2.2.1はsetじゃなくてaddを使っていたため
execute unless score $keiba keiba. matches 1.. run function keiba_assistant:system/welcome
#以上表記なのはダウングレード(?)に対応していないため
execute unless score $keiba keiba.ver matches 1.. run function keiba_assistant:system/update