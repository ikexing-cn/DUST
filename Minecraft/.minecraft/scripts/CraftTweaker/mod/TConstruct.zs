#author : ikexing
import mods.tconstruct.Alloy;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

//添加合金
Alloy.addRecipe(<liquid:stone> * 288, [<liquid:clay> * 144, <liquid:charcoal> * 144]);
Alloy.addRecipe(<liquid:blackiron> * 288, [<liquid:iron> * 144, <liquid:charcoal> * 144]);
Alloy.addRecipe(<liquid:modularium> * 288, [<liquid:gemlapis> * 144, <liquid:gold> * 144]);


//添加浇铸
Casting.addBasinRecipe(<tconstruct:casting>,<tcomplement:porcelain_casting>,<liquid:stone>,256,true,60);
Casting.addBasinRecipe(<tconstruct:casting:1>,<tcomplement:porcelain_casting:1>,<liquid:stone>,256,true,60);
Casting.addBasinRecipe(<tconstruct:casting:1>,<tcomplement:porcelain_casting:1>,<liquid:stone>,256,true,60);
Casting.addBasinRecipe(<tconstruct:seared_tank>,<tcomplement:porcelain_tank>,<liquid:stone>,256,true,60);
Casting.addBasinRecipe(<tconstruct:smeltery_controller>,<tcomplement:porcelain_melter>,<liquid:stone>,256,true,60);
Casting.addBasinRecipe(<tconstruct:seared_tank:1>,<tcomplement:porcelain_tank:1>,<liquid:stone>,256,true,60);
Casting.addBasinRecipe(<tconstruct:seared_tank:2>,<tcomplement:porcelain_tank:2>,<liquid:stone>,256,true,60);
Casting.addBasinRecipe(<tconstruct:channel>,<ceramics:channel>,<liquid:stone>,144,true,20);
Casting.addBasinRecipe(<tconstruct:faucet>,<ceramics:faucet>,<liquid:stone>,144,true,20);

Casting.addTableRecipe(<extendedcrafting:material>,<tconstruct:cast_custom>,<liquid:blackiron>,144,false,40);
Casting.addTableRecipe(<minecraft:coal:1>,<tconstruct:cast_custom>,<liquid:charcoal>,144,false,40);
Casting.addTableRecipe(<minecraft:dye:4>,<tconstruct:cast_custom>,<liquid:gemlapis>,144,false,40);
Casting.addTableRecipe(<modularmachinery:itemmodularium>,<tconstruct:cast_custom>,<liquid:modularium>,144,false,40);

Casting.removeTableRecipe(<tcomplement:materials:1>,<liquid:stone>);

//添加物品熔化
Melting.addRecipe(<liquid:charcoal> * 18,<actuallyadditions:item_misc:11>,350);
Melting.addRecipe(<liquid:charcoal> * 144,<minecraft:coal:1>,450);
Melting.addRecipe(<liquid:charcoal> * 1296,<ore:blockCharcoal>,609);

Melting.addRecipe(<liquid:gemlapis> * 144,<ore:gemLapis>,500);
Melting.addRecipe(<liquid:blackiron> * 144,<ore:ingotBlackIron>,500);
Melting.addRecipe(<liquid:modularium> * 144,<modularmachinery:itemmodularium>,500);