scoreboard players reset @a[distance=..10] tsGUI_guiVal
execute as @a[distance=..10] store result score @s tsGUI_guiVal run clear @s #gui:all{gui:1}
execute as @r[distance=..10,scores={tsGUI_guiVal=1..}] run tag @s add tsGUI_Actor
clear @p[tag=tsGUI_Actor] #gui:all{gui:1}