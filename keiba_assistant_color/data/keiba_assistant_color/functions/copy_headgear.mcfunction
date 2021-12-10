#間違えて頭装備を外さないままボタンを押して頭に旗をつけた人の救済処置(オプション)
#ボタン押したプレイヤーの頭装備をチェストにつながったドロッパーにコピー
item replace block -6 61 -2 container.0 from entity @p armor.head
#ドロッパーの中身を打ち出してチェストに戻すためにレッドストーンを設置
setblock -6 60 -2 minecraft:redstone_block
#↑ここで設置したレッドストーンブロックに面した場所にもともとのブロックを置くインパルスのコマンドブロックを設置
##例:setblock ~ ~1 ~ air