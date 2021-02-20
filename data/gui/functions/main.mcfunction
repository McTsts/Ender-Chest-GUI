# Handle UIs
execute as @e[type=area_effect_cloud,tag=gui] at @s if entity @a[distance=..10] run function gui:gui/code/main

# Remove EGUI Items
clear @a #gui:all{gui:1}
kill @e[type=item,nbt={Item:{tag:{gui:1}}}]