#コマンドブロックの出力を止める
gamerule commandBlockOutput false
#時間計測のためtimeタグを与える
tag @a[predicate=keiba_assistant_color:wool/wool] add time
# $whipのwhipから鞭の使用可能回数を取得する
scoreboard players operation @a[tag=time] whip = $whip whip
#それぞれの馬ごとにタグを与える(このタグはそれぞれの鞭と連携している)
#ゲートの下に羊毛を置くこと
#1番から順に「白→オレンジ→赤紫→空→黄→黄緑→ピンク→灰→薄灰→青緑→紫→青→茶→緑→赤→黒」(参照:クリエイティブ)
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/white] add gate1
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/orange] add gate2
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/magenta] add gate3
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/light_blue] add gate4
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/yellow] add gate5
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/lime] add gate6
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/pink] add gate7
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/gray] add gate8
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/light_gray] add gate9
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/cyan] add gate10
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/purple] add gate11
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/blue] add gate12
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/brown] add gate13
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/green] add gate14
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/red] add gate15
tag @e[type=!minecraft:player,predicate=keiba_assistant_color:wool/black] add gate16
#順位表示用
scoreboard players set $rank rank 1
#カスタム死亡ログ(tellrawコマンド)を使う為無効化
gamerule showDeathMessages false
#死んだときアイテムが飛び散らないように
gamerule keepInventory true