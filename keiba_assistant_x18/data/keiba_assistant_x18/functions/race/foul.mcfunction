# リタイア扱いにするため当事者の時間のカウントを止める
tag @s remove keibatime
# ゲームルールの変更
## 死んだときアイテムが飛び散らないように
gamerule keepInventory true
## カスタム死亡ログ(tellrawコマンド)を使う為無効化
gamerule showDeathMessages false
## アイテムが消えないように即時リスポーンを有効化
gamerule doImmediateRespawn true
# すぐに戻れるようにスポーンポイントのセット
spawnpoint @s ~ ~ ~
# 不正を犯したものをkill
kill @s
# 当事者の時間の記録を削除
scoreboard players reset @s keiba.time
# 競技人数を減らす
execute store result storage keiba_assistant_x18: player int 1 run data get storage keiba_assistant_x18: player 0.9999999999
# 競技者が誰もいない場合停止
execute if data storage keiba_assistant_x18: {player:0} run function keiba_assistant_x18:sys/autostop
# 不正したことの通知
tellraw @a {"translate":"tellraw.keiba_assistant.foul","with":[{"selector":"@s"}]}