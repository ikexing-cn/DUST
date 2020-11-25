#author : youyihj / ikexing

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

var blood_ = <contenttweaker:blood_symbolize>.reuse();
val shapedRecipes as IIngredient[][][IItemStack] = { // 有序合成表添加
    <botania:altar> : [
        [ <tconstruct:seared_slab:1> , <botania:petal:*> , <tconstruct:seared_slab:1>],
        [ null , <tconstruct:seared:1> , null ],
        [ <tconstruct:seared:1> , <tconstruct:seared:1> , <tconstruct:seared:1> ]
     ],
    <botania:pool:2> : [
        [ null , null , null ],
        [ <ore:livingrock> , null , <ore:livingrock> ],
        [ <ore:livingrock> , <ore:livingrock> , <ore:livingrock> ]
    ],
    <botania:spark> : [
        [ null , <botania:petal:*> , null ],
        [ <ore:powderBlaze> , <ore:dustGlowstone> , <ore:powderBlaze> ],
        [ null , <botania:petal:*> , null ]
    ],
    <futuremc:blast_furnace> : [
        [ <ore:stone> , <ore:stone> , <ore:stone> ],
        [ <ore:stone> , <minecraft:furnace> , <ore:stone> ],
        [ <futuremc:smooth_stone> , <futuremc:smooth_stone> , <futuremc:smooth_stone>] 
    ],
    <tconstruct:seared_furnace_controller> : [
        [ <ore:ingotBrickSeared> , <futuremc:blast_furnace> , <ore:ingotBrickSeared> ],
        [ <ore:ingotBrickSeared> , <minecraft:furnace> , <ore:ingotBrickSeared> ],
        [ <ore:ingotBrickSeared> , <futuremc:smoker> , <ore:ingotBrickSeared> ],
    ],
    <minecraft:blaze_rod> : [
        [ <minecraft:blaze_powder> , <minecraft:blaze_powder> , <minecraft:blaze_powder> ],
        [ <minecraft:blaze_powder> , <tconstruct:tool_rod>.withTag({Material: "livingwood"}) , <minecraft:blaze_powder> ],
        [ <minecraft:blaze_powder> , <minecraft:blaze_powder> , <minecraft:blaze_powder> ]

    ],
    <botania:alchemycatalyst> : [
        [ <ore:livingrock> , <ore:ingotManasteel> , <ore:livingrock>],
        [ <minecraft:brewing_stand> , <ore:glowstone> , <minecraft:brewing_stand>],
        [ <ore:livingrock> , <ore:ingotManasteel> , <ore:livingrock>]
    ],
    <tcomplement:porcelain_tank> : [
        [ <ceramics:unfired_clay:5> , <ceramics:unfired_clay:5> , <ceramics:unfired_clay:5>],
        [ <ceramics:unfired_clay:5> , <tcomplement:porcelain_melter:8> , <ceramics:unfired_clay:5>],
        [ <ceramics:unfired_clay:5> , <ceramics:unfired_clay:5> , <ceramics:unfired_clay:5>]
    ],
    <extrautils2:interactionproxy> : [
        [ <extrautils2:ingredients> , <ore:enderpearl>, <extrautils2:ingredients>],
        [ <ore:enderpearl> , <botania:endereyeblock> , <ore:enderpearl>],
        [ <extrautils2:ingredients> , <ore:enderpearl> , <extrautils2:ingredients>]
    ],
    <extrautils2:pipe> * 8 : [
        [ null , <tconstruct:channel>, null],
        [ <tconstruct:channel> , <ore:blockGlass> , <tconstruct:channel>],
        [ null , <tconstruct:channel> , null]
    ],
    <naturesaura:gold_fiber> * 8 : [
        [ <ore:treeLeaves> , <bloodmagic:component:1>, <ore:treeLeaves> ],
        [ <bloodmagic:component:3> , <botania:manaresource:8> , <bloodmagic:component:11>],
        [ <ore:treeLeaves> , <bloodmagic:component:13> , <ore:treeLeaves>]
    ],
    <naturesaura:auto_crafter> : [
        [ <naturesaura:ancient_planks> , <naturesaura:token_euphoria>, <naturesaura:ancient_planks>],
        [ <naturesaura:ancient_planks> , <ore:craftingTableWood> , <naturesaura:ancient_planks>],
        [ <naturesaura:ancient_planks> , <naturesaura:sky_ingot> , <naturesaura:ancient_planks>]
    ],
    <bloodmagic:soul_snare> * 6 : [
        [ <ore:manaString> , <ore:ingotElvenElementium>, <ore:manaString>],
        [ <ore:ingotManasteel> , blood_ , <ore:ingotManasteel>],
        [ <ore:manaString> , <ore:ingotManasteel> , <ore:manaString>]
    ],
    <simplesmelteryaccelerator:smeltery_accelerator> : [
        [ <ore:dyePurple> , <ore:dyeBlack>, <ore:dyeCyan>],
        [ <ore:dyeGray> , <tconstruct:smeltery_controller> , <ore:dyePink>],
        [ <ore:dyeMagenta> , <ore:dyeOrange> , <ore:dyeBlue>]
    ],
    <extendedcrafting:table_basic> : [
        [ <ore:ingotBlackIron> , <botania:rune>, <ore:ingotBlackIron>],
        [ <botania:rune:2> , <minecraft:crafting_table> , <botania:rune:3>],
        [ <ore:ingotBlackIron> , <botania:rune:1> , <ore:ingotBlackIron>]
    ],
    <contenttweaker:whitenether_wart> : [
        [<ore:dyeWhite> , <ore:dyeWhite> , <ore:dyeWhite>],
        [<ore:dyeWhite> , <ore:cropNetherWart> , <ore:dyeWhite>],
        [<ore:dyeWhite> , <ore:dyeWhite> , <ore:dyeWhite>]
    ],
    <immersiveengineering:stone_decoration> * 3 : [
        [<ore:clay> , <minecraft:sand> , <ore:clay>],
        [<minecraft:sand>, blood_ , <minecraft:sand>],
        [<ore:clay> , <minecraft:sand> , <ore:clay>]
    ],
    <immersiveengineering:stone_decoration:1> * 3 : [
        [<ore:ingotBrick> , <ore:powderBlaze> , <ore:ingotBrick>],
        [<ore:ingotBrickNether> , blood_ , <ore:ingotBrickNether>],
        [<ore:ingotBrick> , <ore:ingotBrickNether> , <ore:ingotBrick>]
    ],
    <fluiddrawers:tank> : [
        [<minecraft:glass> , <minecraft:heavy_weighted_pressure_plate> , <minecraft:glass>],
        [<minecraft:glass> , <rustic:liquid_barrel> , <minecraft:glass>],
        [<minecraft:glass> , <minecraft:heavy_weighted_pressure_plate> , <minecraft:glass>]
    ],
    <extrautils2:ingredients:2> : [
        [null , <minecraft:redstone> , null],
        [<minecraft:redstone> , <minecraft:fermented_spider_eye> , <minecraft:redstone>],
        [null , <minecraft:redstone> , null]
    ],
    <extrautils2:resonator> : [
        [<ore:dustRedstone> , <ore:blockCharcoal> , <ore:dustRedstone>],
        [<ore:ingotIronCompressed>, <ore:gemRedstone> , <ore:ingotIronCompressed>],
        [<ore:ingotIronCompressed> , <ore:ingotIronCompressed> , <ore:ingotIronCompressed>]
    ],
    <pneumaticcraft:pressure_chamber_wall> * 8 : [
        [<extrautils2:decorativesolid:3> , <pneumaticcraft:ingot_iron_compressed> ,<extrautils2:decorativesolid:3>],
        [<pneumaticcraft:ingot_iron_compressed> , null ,<pneumaticcraft:ingot_iron_compressed>],
        [<extrautils2:decorativesolid:3> , <pneumaticcraft:ingot_iron_compressed> ,<extrautils2:decorativesolid:3>],
    ],
    <modulardiversity:blockmanainputhatch> : [
        [<modularmachinery:itemmodularium> , <botania:tinyplanetblock> , <modularmachinery:itemmodularium>],
        [<ore:gemLapis> , <modularmachinery:blockcasing> , <ore:gemLapis>],
        [<modularmachinery:itemmodularium> , <ore:gemLapis> , <modularmachinery:itemmodularium>]
    ],
    <bloodmagic:arcane_ashes> : [
        [null, <botania:dye>, null],
        [<minecraft:redstone>, <bloodmagic:monster_soul>, <minecraft:glowstone_dust>], 
        [null, <botania:dye>, null]
    ],
    <survivalist:sawmill> : [
        [<ore:cobblestone> , <minecraft:iron_ingot> , <ore:cobblestone>],
        [<ore:cobblestone> , <minecraft:furnace> , <ore:cobblestone>],
        [<ore:cobblestone> , <ore:cobblestone> , <ore:cobblestone>]
    ]


};

val shapelessRecipes as IIngredient[][IItemStack] = { // 无序合成表添加
    <botania:lightrelay> : [
        <ore:bRedString> , <botania:spark> , <ore:dustGlowstone> , <ore:dustGlowstone>
    ],
    <botania:manaresource:12> : [
        <ore:dyeRed> , <minecraft:string>
    ],
    <ceramics:unfired_clay:4> * 4 : [
        <ore:gemQuartz> | <minecraft:dye:15> , <ore:clay>
    ],
    <extrautils2:crafter> : [
        <minecraft:dropper>,<ore:craftingTableWood>,<naturesaura:auto_crafter>
    ],
    <tconevo:material> : [
        <ore:ingotElvenElementium> ,  <ore:dustRedstone> , <ore:dustRedstone> , <ore:dustRedstone> , <ore:dustGlowstone> , <ore:clay> , <ore:slimeball>
    ],
    <extendedcrafting:material> * 9 : [
        <ore:blockBlackIron> 
    ],
    <pneumaticcraft:pressure_chamber_glass> : [
        <pneumaticcraft:pressure_chamber_wall> , <ore:blockGlass>
    ],
    <pneumaticcraft:pressure_chamber_valve> : [
        <pneumaticcraft:pressure_chamber_wall> , <pneumaticcraft:pressure_tube>
    ],
    <pneumaticcraft:pressure_chamber_interface> : [
        <pneumaticcraft:pressure_chamber_wall> , <pneumaticcraft:omnidirectional_hopper>
    ],
    <survivalist:hatchet> : [
        <tconstruct:axe_head>.withTag({Material: "flint"}) , <ore:stickWood> , <contenttweaker:grass_string>
    ],
    <survivalist:pick> : [
         <tconstruct:pick_head>.withTag({Material: "flint"}) , <ore:stickWood> , <contenttweaker:grass_string>
    ],
    <survivalist:spade> : [
        <tconstruct:shovel_head>.withTag({Material: "flint"}) , <ore:stickWood> , <contenttweaker:grass_string>
    ],
    <contenttweaker:grass_string> : [
        <survivalist:plant_fibres> , <survivalist:plant_fibres>
    ],
    <contenttweaker:crude_knife> : [
        <ore:stickWood> , <contenttweaker:flint_shard>
    ],
    <tconstruct:pick_head>.withTag({Material: "flint"}) : [
        <contenttweaker:flint_shard> , <contenttweaker:flint_shard> , <contenttweaker:flint_shard>
    ],
    <tconstruct:axe_head>.withTag({Material: "flint"}) : [
        <contenttweaker:flint_shard> , <contenttweaker:flint_shard>
    ],
    <tconstruct:shovel_head>.withTag({Material: "flint"}):[
        <contenttweaker:flint_shard>
    ],
    
};  

val removeItems as IItemStack[] = [ // 删物品合成
    <bloodmagic:altar>,
    <bloodmagic:incense_altar>,
    <bloodmagic:soul_forge>,
    <extendedcrafting:table_advanced>,
    <botania:pool>,
    <tombstone:scroll_buff:3>,
    <ceramics:unfired_clay:4>,
    <botanicbonsai:bonsai_pot_manager>,
    <modularmachinery:itemmodularium>,
    <naturesaura:gold_fiber>,
    <extrautils2:pipe>,
    <bloodmagic:soul_snare>,
    <botania:alfheimportal>,
    <extendedcrafting:material>,
    <extendedcrafting:material:7>,
    <immersiveengineering:stone_decoration>,
    <immersiveengineering:stone_decoration:1>,
    <extrautils2:endershard>,
    <extrautils2:ingredients>,
    <actuallyadditions:item_dust:*>,
    <pneumaticcraft:pressure_chamber_wall>,
    <pneumaticcraft:pressure_chamber_interface>,
    <pneumaticcraft:pressure_chamber_glass>,
    <pneumaticcraft:pressure_chamber_valve>,
    <extrautils2:drum:3>,
    <extrautils2:drum:2>

];

val removeFurnace as IItemStack[] = [ //删熔炉合成
    <tconstruct:materials>,
    <minecraft:coal:1>
];

val hideJEI as IItemStack[] = [
    //凿子
    <chisel:chisel_hitech>,
    <chisel:chisel_diamond>,
    <chisel:chisel_iron>,
    //陶瓷
    <ceramics:unfired_clay>,
    <ceramics:unfired_clay:1>,
    <ceramics:clay_bucket>,
    <ceramics:clay_shears>,
    //回旋镖
    <quark:pickarang>,
    //水泥
    <tconstruct:soil>,
    //actuall
    <actuallyadditions:block_misc:5>,
    <actuallyadditions:block_player_interface>,
    <actuallyadditions:block_item_viewer>,
    <actuallyadditions:block_bio_reactor>,
    <actuallyadditions:item_mining_lens>,
    <actuallyadditions:item_bag>,
    <actuallyadditions:item_void_bag>,
    //extrau 
    <extrautils2:terraformer:*>,
    <extrautils2:teleporter:1>,
    <extrautils2:quarry>,
    <extrautils2:quarryproxy>,
    <extrautils2:spike_stone>,
    <extrautils2:spike_iron>,
    <extrautils2:spike_gold>,
    <extrautils2:spike_diamond>,
    <extrautils2:ingredients:7>,
    <extrautils2:ingredients:8>,
    <extrautils2:playerchest>,
    <extrautils2:glasscutter>,
    <extrautils2:grocket:6>,
    <extrautils2:analogcrafter>,
    <extrautils2:machine>,
    <extrautils2:machine>.withTag({Type: "extrautils2:crusher"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:furnace"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}),
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}),
    //botania 
    <botania:opencrate:1>,
    <botania_tweaks:basic_extended_crafty_crate>,
    <botania_tweaks:elite_extended_crafty_crate>,
    <botania_tweaks:advanced_extended_crafty_crate>,
    <botania_tweaks:ultimate_extended_crafty_crate>,
    <botania:rfgenerator>,
    //immer
    <immersiveengineering:metal:*>,
    <immersiveengineering:stone_decoration:10>,
    <immersiveengineering:wooden_device0:2>,
    <immersiveengineering:wooden_device1>,
    <immersiveengineering:material:10>,
    <immersiveengineering:material:11>,
    <immersiveengineering:wooden_device1:1>,
    <immersiveengineering:material:12>,
    <immersiveengineering:material:5>,
    //tinker
    <tinker_io:fuel_input_machine>,
    <tcomplement:high_oven_controller>,
    <tcomplement:melter>,
    <tcomplement:melter:8>,
    <tcomplement:alloy_tank>,
    <tinker_io:stirling_engine>,
    <tinker_io:solidfuel>,

    //actu
    <actuallyadditions:block_grinder>,
    <actuallyadditions:block_grinder_double>,
    //jaopca
    <jaopca:item_nuggetcoal>,
    //natu
    <naturesaura:rf_converter>,
];  
// =====================================================================

for item in removeItems { // 删物品合成
    recipes.remove(item);
}

for item, ingredients in shapedRecipes { // 有序
    recipes.remove(item);
    recipes.addShaped(item, ingredients);
}

for item, ingredients in shapelessRecipes { //无序
    recipes.remove(item);
    recipes.addShapeless(item, ingredients);
}

for item in removeFurnace { //删熔炉合成
    furnace.remove(item);
}
for item in hideJEI { //JEI隐藏+删物品
    JEI.hide(item);
    recipes.remove(item);
}
