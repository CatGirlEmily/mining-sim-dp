#pretty illusion
execute as @e[tag=shop_enter] at @s run execute as @a[distance=..1] at @s run tp @s ~ ~ ~2
execute as @e[tag=shop_leave] at @s run execute as @a[distance=..1] at @s run tp @s ~ ~ ~-2

#carrot on a stick
item replace entity @a hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Powrót Do Sklepu","color":"dark_aqua","bold":true,"italic":false}',Lore:['{"text":"weź do ręki i przytrzymaj PPM","color":"aqua","bold":false,"italic":false}']},HideFlags:4,Unbreakable:1b} 1
execute as @a[scores={lobby=1..},nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b}}] run scoreboard players set @s lobby 0

execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 3 run title @s actionbar ["",{"text":">>> ","color":"dark_aqua"},{"text":"Teleportacja za: 3","bold":true,"color":"aqua"},{"text":" <<<","color":"dark_aqua"}]
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 3 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 3 run scoreboard players add @s lobby 1

execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 9 run title @s actionbar ["",{"text":">>> ","color":"dark_aqua"},{"text":"Teleportacja za: 2","bold":true,"color":"aqua"},{"text":" <<<","color":"dark_aqua"}]
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 9 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 9 run scoreboard players add @s lobby 1

execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 15 run title @s actionbar ["",{"text":">>> ","color":"dark_aqua"},{"text":"Teleportacja za: 1","bold":true,"color":"aqua"},{"text":" <<<","color":"dark_aqua"}]
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 15 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 1
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 15 run scoreboard players add @s lobby 1

execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 21 run title @s actionbar ["",{"text":">>> ","color":"dark_aqua"},{"text":"Teleportowano!","bold":true,"color":"aqua"},{"text":" <<<","color":"dark_aqua"}]
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 21 run tp @s 19.5 302 14.5 0 0
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 21 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 2
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 21 run playsound minecraft:entity.player.levelup master @s
execute as @a[scores={lobby=1..}] run execute if score @s lobby matches 21 run scoreboard players set @s lobby 0
