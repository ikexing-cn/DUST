#author : ikexing
import mods.pneumaticcraft.explosioncrafting;
import mods.pneumaticcraft.pressurechamber;


//爆炸
explosioncrafting.removeRecipe(<pneumaticcraft:ingot_iron_compressed>);
explosioncrafting.removeRecipe(<pneumaticcraft:compressed_iron_block>);
explosioncrafting.addRecipe(<ore:ingotSteel>, <pneumaticcraft:ingot_iron_compressed>, 35);
explosioncrafting.addRecipe(<ore:blockSteel>, <pneumaticcraft:compressed_iron_block>, 35);
pressurechamber.removeRecipe([<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);

//压力室
pressurechamber.removeRecipe([<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.removeRecipe([<pneumaticcraft:compressed_iron_block>]);
pressurechamber.addRecipe([<ore:ingotSteel>], 2.0, [<pneumaticcraft:ingot_iron_compressed>]);
pressurechamber.addRecipe([<ore:blockSteel>], 2.0, [<pneumaticcraft:compressed_iron_block>]);

