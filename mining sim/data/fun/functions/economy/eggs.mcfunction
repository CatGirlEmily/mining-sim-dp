execute as @a[tag=egg] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~
execute as @a[tag=egg] run loot give @s loot fun:egg
execute as @a[tag=egg] run tag @s remove egg
