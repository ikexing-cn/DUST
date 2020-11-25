#author : ikexing
#loader contenttweaker
#priority -10


import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.entity.IEntityLivingBase;

import mods.ctutils.utils.Math;


val nether_wart = mods.contenttweaker.tconstruct.TraitBuilder.create("nether_wart");
nether_wart.color = 0x5A141A;
nether_wart.localizedName = ("粗糙");
nether_wart.localizedDescription = ("§o药水？药水？药水！§r\n§f攻击或挖掘的时候会有几率获得药水效果\n当'粗糙II'满级时药水效果会愈发明显");
nether_wart.maxLevel = 2;
nether_wart.countPerLevel = 25;
nether_wart.addItem(<item:contenttweaker:whitenether_wart>);


nether_wart.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    val random = Math.random() * 10;
    val result = Math.ceil(random);

    val random1 = (Math.random() * 10) / 2;
    val result1 = Math.floor(random1);
        //print(trait.getData(tool).current); //LevelAll
        //print(trait.getData(tool).max); // Levelmax

    if(result >= 5) return;

    val deBuff as IPotion[] =[
        <potion:minecraft:slowness>,
        <potion:minecraft:wither>,
        <potion:minecraft:poison>,
        <potion:minecraft:weakness>,
        <potion:minecraft:levitation>
    ];

    val index = (result1 - 1);

    if(index <= deBuff.length && trait.getData(tool).level != 2){
        target.addPotionEffect(deBuff[index].makePotionEffect(60 , 0 , true , false));
    }else if(trait.getData(tool).current != trait.getData(tool).max){
        target.addPotionEffect(deBuff[index].makePotionEffect(100 , 1 , true , false));
    }else{
        target.addPotionEffect(deBuff[index].makePotionEffect(140 , index , true , false));
    }

};


nether_wart.register();
