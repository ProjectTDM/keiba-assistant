#間違えて頭防具を外さないままボタンを押して頭に旗をつけた人の救済処置
#無くしもの入れのチェストの右上(ここにアイテムがコマンドで強制的に入る)から下のチェストに入れるドロッパーに移動(もしチェストに入ってたとき用)
item replace block -25 68 428 hotbar.4 from block -25 69 428 container.0
#ボタン押したプレイヤーの頭防具をチェストにコピー
item replace block -25 69 428 container.0 from entity @p armor.head
#ドロッパーの中身を打ち出してチェストに戻す
setblock -25 67 428 minecraft:redstone_block
#↑このレッドストーンブロックの周り(動力が伝わる場所)にもともとのブロックを置くインパルスのコマンドブロックを設置