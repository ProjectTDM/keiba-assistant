#成功したことを記録(これで動物が加速)
tag @s add whipSucces1
#耐久値を減らす
scoreboard players operation @s whip -= $whip_uses whip_Temporary
#耐久値を更新
item modify entity @s weapon.mainhand keiba_assistant:whip1
#成功処理(統合)へ
function keiba_assistant:boost/success