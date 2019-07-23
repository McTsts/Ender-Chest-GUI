# Ender-Chest-GUI

Simple Ender Chest GUI for Minecraft.

Run the function egui:gui/code/main to run it

Run the function egui:gui/code/setup once to set it up


How to use:

gui_1.mcfunction and gui_2.mcfunction are GUI pages. More can be added

pages.mcfunction assigns a page function to a page id
Example:
execute as @s[scores={tsEGUI_guiPage=1}] run function egui:gui/gui_1
Assigns page with id 1 to "gui_1.mcfunction"

How to make pages:

#1
replaceitem entity @s enderchest.5 stick{eval:2,egui:1}
execute as @s[scores={tsEGUI_guiVal=2}] run say #2

Items can be placed on any slot. Each item in the gui needs to have "egui" set to 1. Use "eval" to assign an id to an item.
The execute command has an id and a command. (Several ones with the same id can be used of course)
If an item with the id is taken, all commands that correspond to that id are triggered. Command order is irrelevant.



replaceitem entity @s enderchest.0 stick{eval:1,egui:1}
replaceitem entity @s enderchest.1 stick{eval:1,egui:1}
execute as @s[scores={tsEGUI_guiVal=1}] run say #1

Several items can have the same id, and both will trigger the same commands.



replaceitem entity @s enderchest.26 water_bucket{eval:3,egui:1}
execute as @s[scores={tsEGUI_guiVal=3}] run scoreboard players set @s tsEGUI_guiSwitch 2

By setting the "tsEGUI_guiSwitch" value the page is switched. All players start on page 1.
