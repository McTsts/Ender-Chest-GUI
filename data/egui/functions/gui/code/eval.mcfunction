execute unless data entity @s EnderItems[0].tag{egui:1} run function egui:gui/code/restore
execute store result score @s tsEGUI_guiTemp run data get entity @s EnderItems[0].tag.eval
scoreboard players operation @s[tag=!tsEGUI_Skip] tsEGUI_guiVal -= @s tsEGUI_guiTemp
scoreboard players operation @s[tag=tsEGUI_Skip] tsEGUI_guiVal += @s tsEGUI_guiTemp
execute store result score @s tsEGUI_guiTemp run data get entity @s EnderItems[0].Slot
function egui:gui/code/clear
execute store result score @s tsEGUI_guiTemp run data get entity @s EnderItems
execute as @s[scores={tsEGUI_guiTemp=1..}] run function egui:gui/code/eval