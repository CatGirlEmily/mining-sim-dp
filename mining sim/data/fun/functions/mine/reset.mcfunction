#timer
scoreboard players remove %timer mine.timer 1

#ostrzeżenia
execute if score %timer mine.timer matches 1200 run tellraw @a ["",{"text":"[ALERT] ","bold":true,"color":"dark_red"},{"text":"Reset kopalni nast\u0105pi za minut\u0119!","bold":true,"color":"yellow"}]
execute if score %timer mine.timer matches 600 run tellraw @a ["",{"text":"[ALERT] ","bold":true,"color":"dark_red"},{"text":"Reset kopalni nast\u0105pi za 30 sekund!","bold":true,"color":"yellow"}]
execute if score %timer mine.timer matches 200 run tellraw @a ["",{"text":"[ALERT] ","bold":true,"color":"dark_red"},{"text":"Reset kopalni nast\u0105pi za 10 sekund!","bold":true,"color":"yellow"}]
execute if score %timer mine.timer matches 100 run tellraw @a ["",{"text":"[ALERT] ","bold":true,"color":"dark_red"},{"text":"Reset kopalni nast\u0105pi za 5 sekund!","bold":true,"color":"yellow"}]
execute if score %timer mine.timer matches 80 run tellraw @a ["",{"text":"[ALERT] ","bold":true,"color":"dark_red"},{"text":"Reset kopalni nast\u0105pi za 4 sekundy!","bold":true,"color":"yellow"}]
execute if score %timer mine.timer matches 60 run tellraw @a ["",{"text":"[ALERT] ","bold":true,"color":"dark_red"},{"text":"Reset kopalni nast\u0105pi za 3 sekundy!","bold":true,"color":"yellow"}]
execute if score %timer mine.timer matches 40 run tellraw @a ["",{"text":"[ALERT] ","bold":true,"color":"dark_red"},{"text":"Reset kopalni nast\u0105pi za 2 sekundy!","bold":true,"color":"yellow"}]
execute if score %timer mine.timer matches 20 run tellraw @a ["",{"text":"[ALERT] ","bold":true,"color":"dark_red"},{"text":"Reset kopalni nast\u0105pi za 1 sekundę!","bold":true,"color":"yellow"}]

#reset
execute if score %timer mine.timer matches 0 run tp @a[tag=!admin] 15 302 11 -180 0

execute if score %timer mine.timer matches 0 run title @a title {"text":"RESET KOPALNI","color":"yellow","bold":true}
execute if score %timer mine.timer matches 0 run title @a subtitle {"text":"NASTĄPIŁ","color":"red","bold":true}
execute if score %timer mine.timer matches 0 run execute as @a at @s run playsound minecraft:entity.allay.death master @s
execute if score %timer mine.timer matches 0 run execute store result score %rng mine.rng run loot spawn 0 -64 0 loot fun:rng
execute if score %timer mine.timer matches 0 run scoreboard players set %timer mine.timer 12000

#rng
execute if score %rng mine.rng matches 1.. run fill 9 301 -1 23 301 -11 stone

execute if score %rng mine.rng matches 1 run clone 47 300 -1 61 140 -11 9 140 -11
execute if score %rng mine.rng matches 1 run clone 47 139 -1 61 -55 -11 9 -55 -11
execute if score %rng mine.rng matches 1 run clone 47 -56 -1 61 -60 -11 9 -59 -11
execute if score %rng mine.rng matches 1 run scoreboard players set %rng mine.rng 0

execute if score %rng mine.rng matches 2 run clone 68 300 -1 82 140 -11 9 140 -11
execute if score %rng mine.rng matches 2 run clone 68 139 -1 82 -55 -11 9 -55 -11
execute if score %rng mine.rng matches 2 run clone 68 -56 -1 82 -60 -11 9 -59 -11
execute if score %rng mine.rng matches 2 run scoreboard players set %rng mine.rng 0

execute if score %rng mine.rng matches 3 run clone 87 300 -1 101 140 -11 9 140 -11
execute if score %rng mine.rng matches 3 run clone 87 139 -1 101 -55 -11 9 -55 -11
execute if score %rng mine.rng matches 3 run clone 87 -56 -1 101 -60 -11 9 -59 -11
execute if score %rng mine.rng matches 3 run scoreboard players set %rng mine.rng 0
