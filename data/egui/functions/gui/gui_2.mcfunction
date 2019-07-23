#
# Generic Action
# --> execute as @s[scores={tsEGUI_guiVal=1..},tag=!tsEGUI_Skip] run <command>
#
execute as @s[scores={tsEGUI_guiVal=1..},tag=!tsEGUI_Skip] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1

#
# Actions 
# --> replaceitem entity @s enderchest.<slot> <item>{eval:<id>,egui:1}
# --> execute as @s[scores={tsEGUI_guiVal=<id>}] run <command>
#
replaceitem entity @s enderchest.0 bone{eval:1,egui:1}
replaceitem entity @s enderchest.1 bone{eval:1,egui:1}
execute as @s[scores={tsEGUI_guiVal=1}] run say #1

replaceitem entity @s enderchest.5 bone{eval:2,egui:1}
execute as @s[scores={tsEGUI_guiVal=2}] run say #2

replaceitem entity @s enderchest.10 stick{eval:17,egui:1}
execute as @s[scores={tsEGUI_guiVal=17}] run say #17

replaceitem entity @s enderchest.26 lava_bucket{eval:3,egui:1}
execute as @s[scores={tsEGUI_guiVal=3}] run scoreboard players set @s tsEGUI_guiSwitch 1
