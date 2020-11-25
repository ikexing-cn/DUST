#author : ikexing
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var Fluids as string[string] = {
    "mana" : "3DC4E0",
    "bloods" : "F75251",
};

//流体注册
for j in Fluids{
	var fluidReg = VanillaFactory.createFluid(j,Color.fromHex(Fluids[j]));
    fluidReg.register();
}