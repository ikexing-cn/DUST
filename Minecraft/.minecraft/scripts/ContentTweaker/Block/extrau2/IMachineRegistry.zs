#loader contenttweaker

import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachineSlot;
import extrautilities2.Tweaker.IMachine;

IMachineRegistry.createNewMachine(
    "矿石分离机", 
    8192, 
    30, 
    [IMachineSlot.newItemStackSlot("ore")], 
    [IMachineSlot.newItemStackSlot("output"),IMachineSlot.newItemStackSlot("output2")], 
    "contenttweaker:blocks/ore_processing", 
    "contenttweaker:blocks/ore_processing_active"
);

IMachineRegistry.createNewMachine(
    "矿石加工机", 
    8192, 
    30, 
    [IMachineSlot.newItemStackSlot("ore"),IMachineSlot.newItemStackSlot("dust")], 
    [IMachineSlot.newItemStackSlot("output")], 
    "contenttweaker:blocks/ore_separator", 
    "contenttweaker:blocks/ore_separator_active"
);