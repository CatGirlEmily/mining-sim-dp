#functions
function fun:economy/sell
function fun:economy/shop
function fun:economy/eggs
function fun:economy/quests

function fun:mine/ores
function fun:mine/reset
function fun:mine/bombs

#boosbar
bossbar set minecraft:mine.timer players @a
execute store result bossbar minecraft:mine.timer value run scoreboard players get %timer mine.timer

#items
execute as @e[tag=shop] run data merge entity @s {Age:1}
execute as @e[type=item,tag=item_box] run data merge entity @s {Age:1}

#loops
team join player @a
xp set @a 0 levels
xp set @a 0 points
effect give @a night_vision 999999 10 true
recipe give @a *
advancement grant @a everything
spawnpoint @a 17 302 18 180
scoreboard players set @a[tag=!bomb] bomb 1
scoreboard players set @a[tag=!pick] pickaxe 1
scoreboard players set @a[tag=!new.quest] quest.text 0
scoreboard players set @a[tag=!new.quest] quest.text2 0
scoreboard players set @a[tag=!new.quest] quest.text3 0
tag @a[tag=!pick] add pick
tag @a[tag=!bomb] add bomb
tag @a[tag=!new.quest] add new.quest
gamemode adventure @a[tag=!admin]
scoreboard objectives setdisplay sidebar points
tellraw @a[tag=!Joined] {"text":"Rozłącz się z serwera, i wejdź ponownie jeśli chcesz się pozbyć tych informacji o osiągnięciach","color":"dark_red","bold":true}
tag @a add Joined

#picks kill
kill @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",Count:1b}},tag=!shop]
kill @e[type=item,nbt={Item:{id:"minecraft:stone_pickaxe",Count:1b}},tag=!shop]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe",Count:1b}},tag=!shop]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b}},tag=!shop]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe",Count:1b}},tag=!shop]
kill @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe",Count:1b}},tag=!shop]

kill @e[type=item,nbt={Item:{id:"carrot_on_a_stick",Count:1b}}]

#picks
item replace entity @a[scores={pickaxe=1}] container.0 with wooden_pickaxe{display:{Name:'{"text":"Pickaxe I","color":"dark_blue","bold":true,"italic":false}'},Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","deepslate_coal_ore"]}

item replace entity @a[scores={pickaxe=2}] container.0 with stone_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1}],display:{Name:'{"text":"Pickaxe II","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=3}] container.0 with stone_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:2}],display:{Name:'{"text":"Pickaxe III","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=4}] container.0 with stone_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:4}],display:{Name:'{"text":"Pickaxe IV","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}

item replace entity @a[scores={pickaxe=5}] container.0 with iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1}],display:{Name:'{"text":"Pickaxe V","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=6}] container.0 with iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:2}],display:{Name:'{"text":"Pickaxe VI","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=7}] container.0 with iron_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:4}],display:{Name:'{"text":"Pickaxe VII","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}

item replace entity @a[scores={pickaxe=8}] container.0 with diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1}],display:{Name:'{"text":"Pickaxe VIII","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=9}] container.0 with diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:2}],display:{Name:'{"text":"Pickaxe XIX","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=10}] container.0 with diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:4}],display:{Name:'{"text":"Pickaxe X","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}

item replace entity @a[scores={pickaxe=11}] container.0 with netherite_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1}],display:{Name:'{"text":"Pickaxe XI","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=12}] container.0 with netherite_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:2}],display:{Name:'{"text":"Pickaxe XII","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=13}] container.0 with netherite_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:4}],display:{Name:'{"text":"Pickaxe XIII","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}

item replace entity @a[scores={pickaxe=14}] container.0 with golden_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1}],display:{Name:'{"text":"Pickaxe XIV","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=15}] container.0 with golden_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:2}],display:{Name:'{"text":"Pickaxe XV","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=16}] container.0 with golden_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:4}],display:{Name:'{"text":"Pickaxe XVI","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=17}] container.0 with golden_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:6}],display:{Name:'{"text":"Pickaxe XVII","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=18}] container.0 with golden_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:8}],display:{Name:'{"text":"Pickaxe XVIII","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=19}] container.0 with golden_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:111}],display:{Name:'{"text":"Pickaxe XIX","color":"dark_blue","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}
item replace entity @a[scores={pickaxe=20}] container.0 with netherite_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:222}],display:{Name:'{"text":"Pickaxe XX","color":"dark_red","bold":true,"italic":false}'},HideFlags:12,Unbreakable:1b,CanDestroy:["stone","cobblestone","deepslate","obsidian","netherite_block","deepslate_coal_ore","deepslate_gold_ore","deepslate_diamond_ore"]}