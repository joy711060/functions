summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,CustomName:"§b§l你好",CustomNameVisible:1b,Marker:0b}
##毒箭ABC:1
execute @e[tag=A] ~ ~2 ~ scoreboard players tag @e[type=arrow,r=1] add A1
execute @e[tag=A1] ~ ~ ~ particle fallingdust ~ ~ ~ 0.3 0.3 0.3 0.5 30 normal @a 104
execute @e[tag=A1,score_arrow_min=1] ~ ~ ~ scoreboard players tag @e[type=!player,tag=!A1,r=4] add A1e
execute @e[tag=A1e] ~ ~ ~ particle fallingdust ~ ~2 ~ 0.2 0.2 0.2 0.1 2 normal @a 38
execute @e[tag=A1] ~ ~ ~ effect @e[r=4] 19 5 1 true
scoreboard players add @e[tag=A1e] A1etime 1
scoreboard players tag @e[tag=A1e,score_A1etime_min=99] remove A1e
scoreboard players reset @e[score_A1etime_min=99] A1etime 
