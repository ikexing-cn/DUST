#author : ikexing

import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.AlchemyTable;

//狱火熔炉
TartaricForge.removeRecipe([<minecraft:glowstone_dust>,<minecraft:redstone>, <minecraft:gunpowder>,<minecraft:gold_nugget>]);
TartaricForge.addRecipe(<bloodmagic:component:8>,[<botania:manaresource:7>, <contenttweaker:whitenether_wart>, <botania:rune:13>, <minecraft:redstone>], 400,200);

//奥术粉尘
AlchemyArray.addRecipe(<tconevo:metal:25>, <bloodmagic:component:8>, <tconevo:material>);
AlchemyArray.addRecipe(<extrautils2:ingredients>, <minecraft:redstone>, <extrautils2:endershard>);
AlchemyArray.addRecipe(<minecraft:rotten_flesh>, <minecraft:water_bucket>, <forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000}));

//血之祭坛
BloodAltar.removeRecipe(<tconevo:material>);
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.removeRecipe(<minecraft:stone>);

BloodAltar.addRecipe(<bloodmagic:slate>, <botania:livingrock>, 0, 1000,5,5);

//炼金术桌
AlchemyTable.removeRecipe([<bloodmagic:cutting_fluid>,<minecraft:lapis_ore>]);
AlchemyTable.removeRecipe([<bloodmagic:cutting_fluid>,<minecraft:emerald_ore>]);
AlchemyTable.removeRecipe([<bloodmagic:cutting_fluid>,<minecraft:diamond_ore>]);
