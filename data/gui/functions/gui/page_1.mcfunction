#
# Generic Action
# --> execute as @s[scores={tsGUI_guiVal=1..},tag=!tsGUI_Skip] run <command>
#
execute as @s[scores={tsGUI_guiVal=1..},tag=!tsGUI_Skip] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1

#
# Actions 
# --> replaceitem block ~ ~ ~ container.<slot> <item>{eval:<id>,gui:1}
# --> execute as @s[scores={tsGUI_guiVal=<id>}] run <command>
#
replaceitem block ~ ~ ~ container.0 stick{eval:1,gui:1}
replaceitem block ~ ~ ~ container.1 stick{eval:1,gui:1}
replaceitem block ~ ~ ~ container.2 stick{eval:1,gui:1}
execute as @s[scores={tsGUI_guiVal=1}] run say #1

replaceitem block ~ ~ ~ container.5 stick{eval:2,gui:1}
execute as @s[scores={tsGUI_guiVal=2}] run say #2

replaceitem block ~ ~ ~ container.10 stick{eval:17,gui:1}
execute as @s[scores={tsGUI_guiVal=17}] run say #17

replaceitem block ~ ~ ~ container.26 water_bucket{eval:3,gui:1}
execute as @s[scores={tsGUI_guiVal=3}] run scoreboard players set @s tsGUI_guiSwitch 2