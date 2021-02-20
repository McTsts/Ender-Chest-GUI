execute unless data block ~ ~ ~ Items[0].tag{gui:1} run function gui:gui/code/restore
execute store result score @s tsGUI_guiTemp run data get block ~ ~ ~ Items[0].tag.eval
scoreboard players operation @s[tag=!tsGUI_Skip] tsGUI_guiVal -= @s tsGUI_guiTemp
scoreboard players operation @s[tag=tsGUI_Skip] tsGUI_guiVal += @s tsGUI_guiTemp
execute store result score @s tsGUI_guiTemp run data get block ~ ~ ~ Items[0].Slot
function gui:gui/code/clear
execute store result score @s tsGUI_guiTemp run data get block ~ ~ ~ Items
execute as @s[scores={tsGUI_guiTemp=1..}] run function gui:gui/code/eval