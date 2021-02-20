data modify block 0 0 0 Items set value []
data modify block 0 0 0 Items append from block ~ ~ ~ Items[0]
execute store result score players tsGUI_guiTemp if entity @a[distance=..10]
execute if score players tsGUI_guiTemp matches 1 run loot give @p mine 0 0 0
execute unless score players tsGUI_guiTemp matches 1 run loot spawn ~ ~1 ~ mine 0 0 0