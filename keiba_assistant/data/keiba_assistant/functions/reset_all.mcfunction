#初回導入時にこれを実行してください
#時間の記録を消す
scoreboard players reset @a time
#鞭の使用可能回数を0に
scoreboard players reset @a whip
#ゲームルールをもとに戻す
gamerule keepInventory false
gamerule showDeathMessages true
#エラー発生時用に競馬でつく全てのタグの削除
tag @a remove Questioner
tag @a remove time
tag @a remove kill
tag @e remove gate1
tag @e remove gate2
tag @e remove gate3
tag @e remove gate4
#鞭の使用可能回数リセット
scoreboard players set $whip whip 10