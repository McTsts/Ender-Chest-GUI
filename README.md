# Ender-Chest-GUI

Simple Ender Chest GUI for Minecraft.

If anyone ever find this, feel free to use these functions for whatever you want if you can understand them. Credit is appreciated, but not necessary.

# Setup 

Run the function egui:gui/code/main to run it

Run the function egui:gui/code/setup once to set it up

Functions within the gui/code folder can otherwise be fully ignored, and don't need to be edited.

# Basic Information

gui_1.mcfunction and gui_2.mcfunction are GUI pages. More pages can be added in pages.mcfunction.

pages.mcfunction assigns a page function to a page id.

Example:

> execute as @s[scores={tsEGUI_guiPage=1}] run function egui:gui/gui_1

Assigns page with id 1 to "gui_1.mcfunction"

# Making it work


> replaceitem entity @s enderchest.5 stick{eval:2,egui:1}

> execute as @s[scores={tsEGUI_guiVal=2}] run say #2

Items can be placed on any slot. Each item in the gui needs to have "egui" set to 1. Use "eval" to assign an id to an item.
The execute command has an id and a command. (Several ones with the same id can be used of course)
If an item with the id is taken, all commands that correspond to that id are triggered. Command order is irrelevant.
Basically each item only needs two lines to work:
1. The replaceitem line that places it
2. An Execute line that executes something (however, of course, several executes can also be used)

It is also posssible to have items with nothing happening when they are clicked, or click events that are impossible to trigger (useful when the ui is dynamic)



> replaceitem entity @s enderchest.0 stick{eval:1,egui:1}

> replaceitem entity @s enderchest.1 stick{eval:1,egui:1}

> execute as @s[scores={tsEGUI_guiVal=1}] run say #1

Several items can have the same id, and both will trigger the same commands.



> replaceitem entity @s enderchest.26 water_bucket{eval:3,egui:1}

> execute as @s[scores={tsEGUI_guiVal=3}] run scoreboard players set @s tsEGUI_guiSwitch 2

By setting the "tsEGUI_guiSwitch" value the page is switched. All players start on page 1.
