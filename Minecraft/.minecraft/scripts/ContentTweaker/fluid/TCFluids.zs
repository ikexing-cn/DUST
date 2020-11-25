#author : ikexing
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var TCFluids as string[string] = {
	"charcoal" : "0F0D0F",
    "gemlapis" : "162872",
    "blackiron" : "050508",
    "modularium" : "802500"
};

//流体注册
for i in TCFluids{
	var TCfluidReg = VanillaFactory.createFluid(i,Color.fromHex(TCFluids[i]));
    TCfluidReg.temperature = 500;
    TCfluidReg.viscosity = 3000;
    TCfluidReg.density = 3000;
    TCfluidReg.stillLocation = "base:fluids/molten";
    TCfluidReg.flowingLocation ="base:fluids/molten_flowing";

    TCfluidReg.register();
}
