#クリック数をリセットしてまた検知できるように&ずっと実行されないように
scoreboard players operation @s whip_click -= $whip_uses whip_Temporary
#その後のsuccess.mcfunctionでタグを付けるためそれぞれで分けている
function keiba_assistant:boost/check1/check
#success.mcfunctionでtagがついたときに乗っている動物に加速がつく
execute if entity @s[tag=whipSucces1] run effect give @e[tag=gate1] speed 3 4
#リセット
tag @s remove whipSucces1