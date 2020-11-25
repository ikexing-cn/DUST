#author : ikexing
import mods.botania.PureDaisy;
import mods.botania.Apothecary;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;
import mods.botania.Orechid;
import mods.botania.ElvenTrade;

import crafttweaker.item.IIngredient;

//花药台
Apothecary.removeRecipe("endoflame");
Apothecary.addRecipe("endoflame", [ <ore:petalBrown> , <ore:petalBrown> , <ore:petalLightGray> , <ore:petalRed> , <botania:manaresource:23> ]);
Apothecary.removeRecipe("orechid");
Apothecary.addRecipe("orechid", [ <ore:elvenPixieDust> , <ore:redstoneRoot> , <ore:petalRed> , <ore:petalGreen> , <ore:petalYellow> , <ore:petalGray> , <ore:petalGray> , <ore:runeManaB> , <ore:runeEarthB>]);
Apothecary.removeRecipe("orechidIgnem");

//白雏菊
PureDaisy.removeRecipe(<botania:livingrock>);
PureDaisy.removeRecipe(<botania:livingwood>);

//铁树原木的不同朝向
val livingrock = <ore:ironwood_log>;
    livingrock.add(<rustic:log:1>);
    livingrock.add(<rustic:log:9>);
    livingrock.add(<rustic:log:5>);

PureDaisy.addRecipe(<ore:ironwood_log>,<botania:livingwood>,100);
PureDaisy.addRecipe(<tconstruct:seared:3>,<botania:livingrock>,100);

//魔力池
ManaInfusion.addInfusion(<botania:pool>, <botania:pool:3>, 1);
ManaInfusion.addInfusion(<botania:manaresource:1>, <extrautils2:ingredients:2>, 1);
ManaInfusion.addInfusion(<actuallyadditions:block_black_lotus>, <item:contenttweaker:manablack_lotus>, -10000);
ManaInfusion.addAlchemy(<botania:manaresource:2> * 2, <quark:diamond_heart>, 3000);
ManaInfusion.addAlchemy(<minecraft:gold_ingot>, <minecraft:iron_ingot>, 1000);

//符文祭坛
RuneAltar.addRecipe(<botania:rune:1> * 2,[<minecraft:magma_cream>,<ore:dyeRed>,<ore:gunpowder>,<ore:ingotManasteel>,<ore:powderMana>],6000);

//精灵门
ElvenTrade.removeRecipe(<botania_tweaks:basic_extended_crafty_crate>);
ElvenTrade.removeRecipe(<botania_tweaks:advanced_extended_crafty_crate>);
ElvenTrade.removeRecipe(<botania_tweaks:elite_extended_crafty_crate>);
ElvenTrade.removeRecipe(<botania_tweaks:ultimate_extended_crafty_crate>);

//凝矿兰
val removeOres as string[] = [ // 删凝矿兰产出物
    "oreCinnabar",
    "oreTungsten",
    "oreQuartzBlack",
    "oreAluminum",
    "oreEmerald",
    "oreGalena",
    "oreSapphire",
    "oreRuby",
    "oreUranium",
    "oreApatite",
];
for Ore in removeOres {
    Orechid.removeOre(Ore);
}

for runeRemove in 9 to 15{
    RuneAltar.removeRecipe(<botania:rune>.definition.makeStack(runeRemove));
} 
