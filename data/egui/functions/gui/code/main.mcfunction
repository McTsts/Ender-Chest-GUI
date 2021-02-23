# Prepare EGUI (For New Players)
execute as @a unless score @s tsEGUI_guiPage matches -10000.. run scoreboard players set @s tsEGUI_guiSwitch 1

# Execute EGUI (w/ Check)
execute as @a store result score @s tsEGUI_guiCount if data entity @s EnderItems[{tag:{egui:1}}]
execute as @a store result score @s tsEGUI_guiCount2 if data entity @s EnderItems[]
execute as @a unless score @s tsEGUI_guiPrev = @s tsEGUI_guiCount run tag @s add tsEGUI_Check
execute as @a unless score @s tsEGUI_guiPrev = @s tsEGUI_guiCount2 run tag @s add tsEGUI_Check
execute as @a[tag=tsEGUI_Check] run function egui:gui/code/eval
execute as @a[tag=tsEGUI_Check] run function egui:gui/code/load

# Reset EGUI (w/ Page Switch)
tag @a add tsEGUI_Skip
execute as @a[scores={tsEGUI_guiSwitch=-10000..}] run function egui:gui/code/switch
execute as @a[tag=tsEGUI_Check] run scoreboard players reset @s tsEGUI_guiVal
execute as @a[tag=tsEGUI_Extra] run function egui:gui/code/load
execute as @a[tag=tsEGUI_Check] run function egui:gui/code/eval
execute as @a[tag=tsEGUI_Check] run function egui:gui/code/load

# Reset Tick
execute as @a[tag=tsEGUI_Check] store result score @s tsEGUI_guiPrev run data get entity @s EnderItems
tag @a remove tsEGUI_Check
tag @a remove tsEGUI_Extra
tag @a remove tsEGUI_Skip

# Remove EGUI Items
clear @a #egui:all{egui:1}
kill @e[type=item,nbt={Item:{tag:{egui:1}}}]
