#kill cheaters
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",Count:2b}},tag=!plant] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",Count:3b}},tag=!plant] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",Count:4b}},tag=!plant] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",Count:5b}},tag=!plant] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",Count:6b}},tag=!plant] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",Count:7b}},tag=!plant] run kill @s

#delay
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",Count:1b}},tag=!plant1,nbt={OnGround:1b}] run data merge entity @s {PickupDelay:32767,Tags:["plant1"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_brick",Count:1b}},tag=!plant2,nbt={OnGround:1b}] run data merge entity @s {PickupDelay:32767,Tags:["plant2"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:1b}},tag=!plant3,nbt={OnGround:1b}] run data merge entity @s {PickupDelay:32767,Tags:["plant3"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:echo_shard",Count:1b}},tag=!plant4,nbt={OnGround:1b}] run data merge entity @s {PickupDelay:32767,Tags:["plant4"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:honeycomb",Count:1b}},tag=!plant5,nbt={OnGround:1b}] run data merge entity @s {PickupDelay:32767,Tags:["plant5"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap",Count:1b}},tag=!plant6,nbt={OnGround:1b}] run data merge entity @s {PickupDelay:32767,Tags:["plant6"]}
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}},tag=!plant7,nbt={OnGround:1b}] run data merge entity @s {PickupDelay:32767,Tags:["plant7"]}

#bomb levels
execute as @a[scores={bomb=1,bomb.time=500..}] run item replace entity @s container.7 with brick{display:{Name:'{"text":"Bomba I","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"wyrzuć na ziemię i ciesz się eksplozją","color":"green","italic":true}']}} 1
execute as @a[scores={bomb=1,bomb.time=500..}] run scoreboard players set @s bomb.time 0

execute as @a[scores={bomb=2,bomb.time=500..}] run item replace entity @s container.7 with nether_brick{display:{Name:'{"text":"Bomba II","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"wyrzuć na ziemię i ciesz się eksplozją","color":"green","italic":true}']}} 1
execute as @a[scores={bomb=2,bomb.time=500..}] run scoreboard players set @s bomb.time 0

execute as @a[scores={bomb=3,bomb.time=500..}] run item replace entity @s container.7 with copper_ingot{display:{Name:'{"text":"Bomba III","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"wyrzuć na ziemię i ciesz się eksplozją","color":"green","italic":true}']}} 1
execute as @a[scores={bomb=3,bomb.time=500..}] run scoreboard players set @s bomb.time 0

execute as @a[scores={bomb=4,bomb.time=500..}] run item replace entity @s container.7 with echo_shard{display:{Name:'{"text":"Bomba IV","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"wyrzuć na ziemię i ciesz się eksplozją","color":"green","italic":true}']}} 1
execute as @a[scores={bomb=4,bomb.time=500..}] run scoreboard players set @s bomb.time 0

execute as @a[scores={bomb=5,bomb.time=500..}] run item replace entity @s container.7 with honeycomb{display:{Name:'{"text":"Bomba V","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"wyrzuć na ziemię i ciesz się eksplozją","color":"green","italic":true}']}} 1
execute as @a[scores={bomb=5,bomb.time=500..}] run scoreboard players set @s bomb.time 0

execute as @a[scores={bomb=6,bomb.time=500..}] run item replace entity @s container.7 with netherite_scrap{display:{Name:'{"text":"Bomba VI","color":"dark_green","bold":true,"italic":false}',Lore:['{"text":"wyrzuć na ziemię i ciesz się eksplozją","color":"green","italic":true}']}} 1
execute as @a[scores={bomb=6,bomb.time=500..}] run scoreboard players set @s bomb.time 0

execute as @a[scores={bomb=7,bomb.time=5000..}] run item replace entity @s container.7 with netherite_ingot{display:{Name:'{"text":"Bomba VII","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"do tego nie potrzebujesz żadnych kodów.","color":"red","italic":true}']}} 1
execute as @a[scores={bomb=7,bomb.time=5000..}] run scoreboard players set @s bomb.time 0

#boom1
execute as @e[tag=plant1] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #fun:bomb1_destroy
execute as @e[tag=plant1] at @s run fill ~2 ~ ~ ~-2 ~ ~ air replace #fun:bomb1_destroy
execute as @e[tag=plant1] at @s run fill ~ ~ ~2 ~ ~ ~-2 air replace #fun:bomb1_destroy
execute as @e[tag=plant1] at @s run fill ~ ~2 ~ ~ ~-2 ~ air replace #fun:bomb1_destroy
execute as @e[tag=plant1] at @s run kill @s

#boom2
execute as @e[tag=plant2] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace #fun:bomb1_destroy
execute as @e[tag=plant2] at @s run fill ~4 ~ ~ ~-4 ~ ~ air replace #fun:bomb1_destroy
execute as @e[tag=plant2] at @s run fill ~ ~ ~4 ~ ~ ~-4 air replace #fun:bomb1_destroy
execute as @e[tag=plant2] at @s run fill ~ ~4 ~ ~ ~-4 ~ air replace #fun:bomb1_destroy
execute as @e[tag=plant2] at @s run kill @s

#boom3
execute as @e[tag=plant3] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #fun:bomb3_destroy
execute as @e[tag=plant3] at @s run fill ~2 ~ ~ ~-2 ~ ~ air replace #fun:bomb3_destroy
execute as @e[tag=plant3] at @s run fill ~ ~ ~2 ~ ~ ~-2 air replace #fun:bomb3_destroy
execute as @e[tag=plant3] at @s run fill ~ ~2 ~ ~ ~-2 ~ air replace #fun:bomb3_destroy
execute as @e[tag=plant3] at @s run kill @s

#boom4
execute as @e[tag=plant4] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace #fun:bomb3_destroy
execute as @e[tag=plant4] at @s run fill ~4 ~ ~ ~-4 ~ ~ air replace #fun:bomb3_destroy
execute as @e[tag=plant4] at @s run fill ~ ~ ~4 ~ ~ ~-4 air replace #fun:bomb3_destroy
execute as @e[tag=plant4] at @s run fill ~ ~4 ~ ~ ~-4 ~ air replace #fun:bomb3_destroy
execute as @e[tag=plant4] at @s run kill @s

#boom5
execute as @e[tag=plant5] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #fun:bomb5_destroy
execute as @e[tag=plant5] at @s run fill ~2 ~ ~ ~-2 ~ ~ air replace #fun:bomb5_destroy
execute as @e[tag=plant5] at @s run fill ~ ~ ~2 ~ ~ ~-2 air replace #fun:bomb5_destroy
execute as @e[tag=plant5] at @s run fill ~ ~2 ~ ~ ~-2 ~ air replace #fun:bomb5_destroy
execute as @e[tag=plant5] at @s run kill @s

#boom6
execute as @e[tag=plant6] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace #fun:bomb5_destroy
execute as @e[tag=plant6] at @s run fill ~4 ~ ~ ~-4 ~ ~ air replace #fun:bomb5_destroy
execute as @e[tag=plant6] at @s run fill ~ ~ ~4 ~ ~ ~-4 air replace #fun:bomb5_destroy
execute as @e[tag=plant6] at @s run fill ~ ~4 ~ ~ ~-4 ~ air replace #fun:bomb5_destroy
execute as @e[tag=plant6] at @s run kill @s

##################BOOM 7
execute as @e[tag=plant7] at @s run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace #fun:bomb5_destroy
execute as @e[tag=plant7] at @s run fill ~15 ~ ~ ~-15 ~ ~ air replace #fun:bomb5_destroy
execute as @e[tag=plant7] at @s run fill ~ ~ ~4 ~ ~ ~-15 air replace #fun:bomb5_destroy
execute as @e[tag=plant7] at @s run fill ~ ~15 ~ ~ ~-15 ~ air replace #fun:bomb5_destroy
execute as @e[tag=plant7] at @s run kill @s