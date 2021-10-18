#コマンドブロックの出力を止める
gamerule commandBlockOutput false
#時間計測のためtimeタグを与える
tag @a[x=-32,y=69,z=422,dx=-10,dy=6,dz=-5] add time
# $whipのwhipから鞭の使用可能回数を取得する
scoreboard players operation @a[tag=time] whip = $whip whip
#それぞれの馬ごとにタグを与える(このタグはそれぞれの鞭と連携している)
# ※ゲートに合わせて座標は変更しないと動作しないので注意!!!
tag @e[type=!minecraft:player,x=-34,y=69,z=417,dx=0,dy=6,dz=4] add gate1
tag @e[type=!minecraft:player,x=-36,y=69,z=417,dx=0,dy=6,dz=4] add gate2
tag @e[type=!minecraft:player,x=-38,y=69,z=417,dx=0,dy=6,dz=4] add gate3
tag @e[type=!minecraft:player,x=-40,y=69,z=417,dx=0,dy=6,dz=4] add gate4
#順位表示用
scoreboard players set $runk runk 1
#カスタム死亡ログ(tellrawコマンド)を使う為無効化
gamerule showDeathMessages false
#死んだときアイテムが飛び散らないように
gamerule keepInventory true