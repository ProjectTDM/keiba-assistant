#クリック数をリセットしてまた検知できるように&ずっと実行されないように
scoreboard players reset @s whip_click
#その後のsuccess.mcfunctionでタグを付けるためそれぞれで分けている
function keiba_assistant_color:boost/check1/check
#success.mcfunctionでtagがついたときに乗っている動物に加速がつく
execute if entity @s[tag=whipSucces1] run effect give @e[tag=gate1] speed 5 3
#リセット
tag @s remove whipSucces1