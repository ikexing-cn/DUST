#author : ikexing
#loader contenttweaker
#priority -10
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import crafttweaker.entity.IEntityLivingBase;

import mods.ctutils.utils.Math;


val charcoal = mods.contenttweaker.tconstruct.TraitBuilder.create("charcoal");
charcoal.color = 0x302B22;
charcoal.localizedName = ("跌宕");
charcoal.localizedDescription = ("§o咚砰，咚，砰…… §r\n§f破坏方块时会有极小几率得到小块木炭");
charcoal.onBlockHarvestDrops = function(trait, tool, event) {
    val random = Math.random() * 10;
    val result = Math.round(random);
    if(result >= 5) event.drops += <item:actuallyadditions:item_misc:11> * 3 % 15;
};

charcoal.register();

val charcoal1 = mods.contenttweaker.tconstruct.TraitBuilder.create("charcoal1");
charcoal1.color = 0x302B22;
charcoal1.localizedName = ("脆弱");
charcoal1.localizedDescription = ("§o咚砰，咚，砰…… §r\n§f小心！木炭做的把手将十分的脆弱！\n你的耐久很可能会莫名损失一大半！");
charcoal1.onToolDamage = function(trait, tool, unmodifiedAmount, newAmount, holder) {
    val random = Math.random() * 10;
    val result = Math.round(random);

    if(result == 5){
        return 80;
    }
    return newAmount;
};

charcoal1.register();

val charcoalM = mods.contenttweaker.tconstruct.MaterialBuilder.create("charcoalM");
charcoalM.color = 0x302B22;
charcoalM.liquid = <fluid:charcoal>;
charcoalM.craftable = true;
charcoalM.representativeItem = <item:minecraft:coal:1>;
//charcoalM.castable = true;
charcoalM.addItem(<item:minecraft:coal:1>);
charcoalM.addItem(<item:actuallyadditions:item_misc:11> , 1 , 18);
charcoalM.addItem(<ore:blockCharcoal> , 1 , 1296);
charcoalM.addMaterialTrait("charcoal", "head");
charcoalM.addMaterialTrait("charcoal", "extra");
charcoalM.addMaterialTrait("charcoal", "handle");
charcoalM.addMaterialTrait("charcoal1", "handle");
charcoalM.addHandleMaterialStats(0.8, -50);
charcoalM.addExtraMaterialStats(50);
charcoalM.addHeadMaterialStats(180, 6.8, 3.5, 1);
charcoalM.localizedName = "木炭";
charcoalM.itemLocalizer = function(thisMaterial, itemName){return "木炭 " + itemName;};
charcoalM.register();
