#成功したことを記録(これで動物が加速)
tag @s add whipSucces1
#耐久値を減らす
scoreboard players remove @s keiba.whip 1
#成功処理(統合)へ
function keiba_assistant_color:boost/success