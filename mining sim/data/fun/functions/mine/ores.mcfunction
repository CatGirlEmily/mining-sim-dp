#ore
execute as @a[scores={ore.coal=1..}] run scoreboard players add @s points 10
execute as @a[scores={ore.coal=1..}] run scoreboard players remove @s ore.coal 1

execute as @a[scores={ore.gold=1..}] run scoreboard players add @s points 50
execute as @a[scores={ore.gold=1..}] run scoreboard players remove @s ore.gold 1

execute as @a[scores={ore.diamond=1..}] run scoreboard players add @s points 100
execute as @a[scores={ore.diamond=1..}] run scoreboard players remove @s ore.diamond 1