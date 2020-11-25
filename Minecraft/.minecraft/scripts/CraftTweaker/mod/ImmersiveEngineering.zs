#author : ikexing

import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Crusher;

//焦炉
CokeOven.removeRecipe(<minecraft:coal:1>);

//粉碎机
for i in 2 to 5 {
    Crusher.removeRecipe(<actuallyadditions:item_dust>.definition.makeStack(i));
}
Crusher.addRecipe(<techreborn:dust:18>, <minecraft:emerald>, 1024);
Crusher.addRecipe(<techreborn:dust:16>, <minecraft:diamond>, 1024);
Crusher.addRecipe(<techreborn:dust:28>, <minecraft:dye:4>, 1024);

//高炉

