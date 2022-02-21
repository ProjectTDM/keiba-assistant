#playerheadを持たせるためのチェスト付きトロッコ召喚
summon chest_minecart ~ ~ ~ {Invulnerable:1b,Tags:["keibahead"]}
#チェスト付きトロッコの特定のインベントリにplayerheadを入れる
loot replace entity @e[tag=keibahead,sort=nearest,limit=1] container.0 loot keiba_assistant:player_head