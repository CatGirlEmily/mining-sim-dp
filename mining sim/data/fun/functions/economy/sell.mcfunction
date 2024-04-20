execute as @e[tag=sell] at @s run execute as @a[distance=..1] run tag @s add selling
execute as @a[tag=selling] run title @s actionbar ["",{"text":">>> ","color":"dark_red"},{"text":"Sprzedaż trwa...","bold":true,"color":"red"},{"text":" <<<","color":"dark_red"}]

#proces sprzedaży
execute as @a[tag=selling,scores={mined.stone=1..}] run tag @s add stone_sell
execute as @a[tag=selling,scores={mined.cobblestone=1..}] run tag @s add cobblestone_sell
execute as @a[tag=selling,scores={mined.deepslate=1..}] run tag @s add deepslate_sell
execute as @a[tag=selling,scores={mined.obsidian=1..}] run tag @s add obsidian_sell
execute as @a[tag=selling,scores={mined.netherite=1..}] run tag @s add netherite_sell

#stone_sell
execute as @a[tag=selling,tag=stone_sell] run scoreboard players remove @s mined.stone 1
execute as @a[tag=selling,tag=stone_sell] run scoreboard players add @s points 1
tag @a[tag=stone_sell] remove stone_sell

#cobblestone_sell
execute as @a[tag=selling,tag=cobblestone_sell] run scoreboard players remove @s mined.cobblestone 1
execute as @a[tag=selling,tag=cobblestone_sell] run scoreboard players add @s points 5
tag @a[tag=cobblestone_sell] remove cobblestone_sell

#deepslate_sell
execute as @a[tag=selling,tag=deepslate_sell] run scoreboard players remove @s mined.deepslate 1
execute as @a[tag=selling,tag=deepslate_sell] run scoreboard players add @s points 20
tag @a[tag=deepslate_sell] remove deepslate_sell

#obsidian_sell
execute as @a[tag=selling,tag=obsidian_sell] run scoreboard players remove @s mined.obsidian 1
execute as @a[tag=selling,tag=obsidian_sell] run scoreboard players add @s points 80
tag @a[tag=obsidian_sell] remove obsidian_sell

#netherite_sell
execute as @a[tag=selling,tag=netherite_sell] run scoreboard players remove @s mined.netherite 1
execute as @a[tag=selling,tag=netherite_sell] run scoreboard players add @s points 400
tag @a[tag=netherite_sell] remove netherite_sell

#koniec sprzedaży
execute as @a[tag=selling,scores={mined.stone=0,mined.cobblestone=0,mined.deepslate=0,mined.obsidian=0,mined.netherite=0}] run title @s actionbar ["",{"text":">>> ","color":"dark_green"},{"text":"Sprzeda\u017c zako\u0144czona","bold":true,"color":"green"},{"text":" <<<","color":"dark_green"}]
execute as @a[tag=selling,scores={mined.stone=0,mined.cobblestone=0,mined.deepslate=0,mined.obsidian=0,mined.netherite=0}] run tag @s remove selling