# ログの無効化
#gamerule sendCommandFeedback false
# 鞭取得の無効化
scoreboard players reset @s keiba.whip
# 鞭を持ってることを検知するadvancementを付与
advancement grant @s only keiba_assistant:whip/root
# 鞭の予約
## 名前取得の前準備
function keiba_assistant:whip/give/
## 村人に持たせたplayerheadから名前情報を抽出してstorageに記録
data modify storage keiba_assistant: reserve.1 set from entity @e[tag=keibahead,sort=nearest,limit=1] Inventory[0].tag.SkullOwner.Name
## 村人をtpkill
tp @e[tag=keibahead,sort=nearest,limit=1] ~ -129 ~
# 鞭の付与
loot spawn ~ ~ ~ loot keiba_assistant:whip/whip1
# 鞭を受け取ったことの通知
tellraw @s {"translate":"tellraw.keiba_assistant.give","with":[{"translate":"item.keiba_assistant.whip","color":"red","with":[{"text":"1"}]}]}
# 鞭を返却できるように
scoreboard players enable @s keiba.clear