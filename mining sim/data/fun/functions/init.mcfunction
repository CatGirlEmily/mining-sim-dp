#scoreboards create
scoreboard objectives add mined.stone minecraft.mined:minecraft.stone
scoreboard objectives add mined.cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add mined.deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add mined.obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add mined.netherite minecraft.mined:minecraft.netherite_block

scoreboard objectives add ore.coal minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add ore.gold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add ore.diamond minecraft.mined:minecraft.deepslate_diamond_ore

scoreboard objectives add bomb.time minecraft.custom:minecraft.play_time
scoreboard objectives add bomb dummy
scoreboard objectives add pickaxe dummy
scoreboard objectives add points dummy

scoreboard objectives add lobby minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add quests minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add mine.timer dummy
scoreboard objectives add mine.rng dummy

scoreboard objectives add quest.stone minecraft.mined:minecraft.stone
scoreboard objectives add quest.obsidian minecraft.mined:minecraft.obsidian

#killing items with tags
kill @e[tag=item_box]
kill @e[tag=shop]

#items summoning
summon item 6.5 303 12.5 {Tags:["item_box"],NoGravity:0b,CustomNameVisible:1b,PickupDelay:32767,CustomName:'{"text":"Loot Box","color":"red","bold":true,"italic":false}',Item:{id:"minecraft:beacon",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}}

summon item 3.5 297 23.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe I","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:wooden_pickaxe",Count:1b}}
summon item 3.5 297 27.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe II","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:stone_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 7.5 297 27.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe III","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:stone_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 3.5 297 30.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe IV","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:stone_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 7.5 297 30.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe V","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 3.5 297 33.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe VI","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 7.5 297 33.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe VII","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:iron_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 3.5 297 36.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe VIII","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 7.5 297 36.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe IX","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 5.5 297 38.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe X","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 1.5 297 25.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe XI","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:netherite_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item -2.5 297 25.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe XII","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:netherite_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}
summon item 1.5 297 28.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Pickaxe XIII","color":"dark_blue","bold":true,"italic":false}',Item:{id:"minecraft:netherite_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}



summon item 0.5 297 17.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Bomba I","color":"dark_green","bold":true,"italic":false}',Item:{id:"minecraft:brick",Count:1b}}
summon item 4.5 297 17.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Bomba II","color":"dark_green","bold":true,"italic":false}',Item:{id:"minecraft:nether_brick",Count:1b}}
summon item 0.5 297 13.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Bomba III","color":"dark_green","bold":true,"italic":false}',Item:{id:"minecraft:copper_ingot",Count:1b}}
summon item 4.5 297 13.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Bomba IV","color":"dark_green","bold":true,"italic":false}',Item:{id:"minecraft:echo_shard",Count:1b}}
summon item 0.5 297 9.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Bomba V","color":"dark_green","bold":true,"italic":false}',Item:{id:"minecraft:honeycomb",Count:1b}}
summon item 4.5 297 9.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Bomba VI","color":"dark_green","bold":true,"italic":false}',Item:{id:"minecraft:netherite_scrap",Count:1b}}
summon item 2.5 297 5.5 {PickupDelay:32767,NoGravity:1b,CustomNameVisible:1b,Tags:["shop"],CustomName:'{"text":"Bomba VII","color":"dark_red","bold":true,"italic":false}',Item:{id:"minecraft:netherite_ingot",Count:1b}}


#doors reset (shop)
setblock 18 296 22 air replace
setblock 8 296 22 air replace
setblock 18 296 24 air replace
setblock 8 296 24 air replace

setblock 18 296 22 minecraft:oak_door[facing=west,half=lower,hinge=left,open=false]
setblock 8 296 22 minecraft:oak_door[facing=west,half=lower,hinge=left,open=false]
setblock 18 296 24 minecraft:oak_door[facing=west,half=lower,hinge=left,open=false]
setblock 8 296 24 minecraft:oak_door[facing=west,half=lower,hinge=left,open=false]
setblock 18 297 22 minecraft:oak_door[facing=west,half=upper,hinge=left,open=false]
setblock 8 297 22 minecraft:oak_door[facing=west,half=upper,hinge=left,open=false]
setblock 18 297 24 minecraft:oak_door[facing=west,half=upper,hinge=left,open=false]
setblock 8 297 24 minecraft:oak_door[facing=west,half=upper,hinge=left,open=false]
