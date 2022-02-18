#playerheadを持たせるための村人召喚
summon villager ~ ~-4 ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["keibahead"],Attributes:[{Name:"generic.max_health",Base:1}]}
#村人の特定のインベントリにplayerheadを入れる
loot replace entity @e[tag=keibahead,sort=nearest,limit=1] villager.0 loot keiba_assistant:player_head