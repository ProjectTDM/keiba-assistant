# playerheadを持たせるためのチェスト付きトロッコ召喚
summon villager ~ ~-2 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["keibahead"]}
# チェスト付きトロッコの特定のインベントリにplayerheadを入れる
loot replace entity @e[tag=keibahead,sort=nearest,limit=1] villager.0 loot keiba_assistant:player_head