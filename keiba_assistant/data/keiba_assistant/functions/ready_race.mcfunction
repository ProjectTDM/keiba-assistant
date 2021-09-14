#コマンドブロックの出力を止める
gamerule commandBlockOutput false
#時間計測のためtimeタグを与える
tag @a[x=-32,y=69,z=422,dx=-10,dy=6,dz=-5] add time
#ここ2つの数字は揃える(この数字が使用可能回数と鞭に表示される耐久の上限として書かれる)
scoreboard players set @a[tag=time] whip 10
scoreboard players set $race whip 10
#それぞれの馬ごとにタグを与える(このタグはそれぞれの鞭と連携している)
tag @e[type=!minecraft:player,x=-34,y=69,z=417,dx=0,dz=4] add gate1
tag @e[type=!minecraft:player,x=-36,y=69,z=417,dx=0,dz=4] add gate2
tag @e[type=!minecraft:player,x=-38,y=69,z=417,dx=0,dz=4] add gate3
tag @e[type=!minecraft:player,x=-40,y=69,z=417,dx=0,dz=4] add gate4
#順位表示用
scoreboard players set $runk runk 1
#カスタム死亡ログ(tellrawコマンド)を使う為無効化
gamerule showDeathMessages false
#死んだときアイテムが飛び散らないように
gamerule keepInventory true