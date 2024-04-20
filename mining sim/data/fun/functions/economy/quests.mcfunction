#quest complete (or not)
execute as @a[scores={quest.stone=..299}] run scoreboard players set @s quest.text 0
execute as @a[scores={quest.stone=..299}] run scoreboard players add @s quest.stone 1

execute as @a[scores={quest.stone=300}] run scoreboard players set @s quest.text 1
execute as @a[scores={quest.stone=300}] run scoreboard players add @s quest.stone 1

execute as @a[scores={quest.stone=1000}] run scoreboard players set @s quest.text 2
execute as @a[scores={quest.stone=1000}] run scoreboard players add @s quest.stone 1


execute as @a[scores={quest.obsidian=..49}] run scoreboard players set @s quest.text 0
execute as @a[scores={quest.obsidian=..49}] run scoreboard players add @s quest.obsidian 1

execute as @a[scores={quest.obsidian=100}] run scoreboard players set @s quest.text 1
execute as @a[scores={quest.obsidian=100}] run scoreboard players add @s quest.obsidian 1

execute as @a[scores={quest.obsidian=300}] run scoreboard players set @s quest.text 2
execute as @a[scores={quest.obsidian=300}] run scoreboard players add @s quest.obsidian 1



#warped fungus on a stick
item replace entity @a hotbar.4 with warped_fungus_on_a_stick{display:{Name:'{"text":"Zadania","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"text":"przytrzymaj PPM trzymając w dłoni","color":"aqua","bold":false,"italic":false}']},HideFlags:4,Unbreakable:1b} 1
execute as @a[scores={quests=1..},nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b}}] run scoreboard players set @s quests 0

#show

execute as @a[scores={quests=1..}] run execute if score @s quests matches 4 run title @s actionbar ["",{"text":">>> ","color":"dark_aqua"},{"text":"Oczekiwanie: 2","bold":true,"color":"aqua"},{"text":" <<<","color":"dark_aqua"}]
execute as @a[scores={quests=1..}] run execute if score @s quests matches 4 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1
execute as @a[scores={quests=1..}] run execute if score @s quests matches 4 run scoreboard players add @s quests 1

execute as @a[scores={quests=1..}] run execute if score @s quests matches 10 run title @s actionbar ["",{"text":">>> ","color":"dark_aqua"},{"text":"Oczekiwanie: 1","bold":true,"color":"aqua"},{"text":" <<<","color":"dark_aqua"}]
execute as @a[scores={quests=1..}] run execute if score @s quests matches 10 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1
execute as @a[scores={quests=1..}] run execute if score @s quests matches 10 run scoreboard players add @s quests 1

execute as @a[scores={quests=1..}] run execute if score @s quests matches 16 run title @s actionbar ["",{"text":">>> ","color":"dark_aqua"},{"text":"Zadanie Wyświetlone!","bold":true,"color":"aqua"},{"text":" <<<","color":"dark_aqua"}]
execute as @a[scores={quests=1..}] run execute if score @s quests matches 16 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 2

execute as @a[scores={quests=1..}] run execute if score @s quests matches 16 run tellraw @s ["",{"text":">>>>","color":"dark_aqua"},{"text":" Zadania ","bold":true,"color":"aqua"},{"text":"<<<<","color":"dark_aqua"}]

#TAGS MESSAGES


execute as @a[scores={quests=16}] run execute if score @s quest.text matches 0 run tellraw @s ["",{"text":"\n"},{"text":"Wykop 300 kamienia (1/2)","color":"blue"},{"text":"\n"},{"text":" \u0020 \u0020 \u0020 [","bold":true,"color":"dark_red"},{"text":"\u2716","color":"dark_red"},{"text":"]","bold":true,"color":"dark_red"}]
execute as @a[scores={quests=16}] run execute if score @s quest.text matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Wykop 1000 kamienia (2/2)","color":"blue"},{"text":"\n"},{"text":" \u0020 \u0020 \u0020 [","bold":true,"color":"dark_red"},{"text":"\u2716","color":"dark_red"},{"text":"]","bold":true,"color":"dark_red"}]
execute as @a[scores={quests=16}] run execute if score @s quest.text matches 2 run tellraw @s ["",{"text":"\n"},{"text":"Wykop 1000 kamienia (2/2)","color":"blue"},{"text":"\n"},{"text":" \u0020 \u0020 \u0020 [\u2714]","bold":true,"color":"green"}]

execute as @a[scores={quests=16}] run execute if score @s quest.text2 matches 0 run tellraw @s ["",{"text":"\n"},{"text":"Wykop 50 obsydianu (1/3)","color":"blue"},{"text":"\n"},{"text":" \u0020 \u0020 \u0020 [","bold":true,"color":"dark_red"},{"text":"\u2716","color":"dark_red"},{"text":"]","bold":true,"color":"dark_red"}]
execute as @a[scores={quests=16}] run execute if score @s quest.text2 matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Wykop 100 obsydianu (2/3)","color":"blue"},{"text":"\n"},{"text":" \u0020 \u0020 \u0020 [","bold":true,"color":"dark_red"},{"text":"\u2716","color":"dark_red"},{"text":"]","bold":true,"color":"dark_red"}]
execute as @a[scores={quests=16}] run execute if score @s quest.text2 matches 2 run tellraw @s ["",{"text":"\n"},{"text":"Wykop 300 obsydianu (3/3)","color":"blue"},{"text":"\n"},{"text":" \u0020 \u0020 \u0020 [\u2714]","bold":true,"color":"green"}]


#ENING
execute as @a[scores={quests=1..}] run execute if score @s quests matches 16 run scoreboard players set @s quests 0