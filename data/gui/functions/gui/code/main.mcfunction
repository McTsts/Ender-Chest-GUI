# Prepare GUI (For New Players)
execute unless score @s tsGUI_guiPage matches -10000.. run scoreboard players set @s tsGUI_guiSwitch 1

# Execute GUI (w/ Check)
execute store result score @s tsGUI_guiCount run data get block ~ ~ ~ Items
execute store result score @s tsGUI_guiCount2 if data block ~ ~ ~ Items[{tag:{gui:1}}]
execute unless score @s tsGUI_guiPrev = @s tsGUI_guiCount run tag @s add tsGUI_Check
execute unless score @s tsGUI_guiPrev = @s tsGUI_guiCount2 run tag @s add tsGUI_Check
execute as @s[tag=tsGUI_Check] run function gui:gui/code/eval
execute as @s[tag=tsGUI_Check] run function gui:gui/code/find
execute as @s[tag=tsGUI_Check] run function gui:gui/code/load
tag @a remove tsGUI_Actor

# Reset GUI (w/ Page Switch)
tag @s add tsGUI_Skip
execute as @s[scores={tsGUI_guiSwitch=-10000..}] run function gui:gui/code/switch
execute as @s[tag=tsGUI_Check] run scoreboard players reset @s tsGUI_guiVal
execute as @s[tag=tsGUI_Extra] run function gui:gui/code/load
execute as @s[tag=tsGUI_Check] run function gui:gui/code/eval
execute as @s[tag=tsGUI_Check] run function gui:gui/code/load

# Reset Tick
execute as @s[tag=tsGUI_Check] store result score @s tsGUI_guiPrev run data get block ~ ~ ~ Items
tag @s remove tsGUI_Check
tag @s remove tsGUI_Extra
tag @s remove tsGUI_Skip