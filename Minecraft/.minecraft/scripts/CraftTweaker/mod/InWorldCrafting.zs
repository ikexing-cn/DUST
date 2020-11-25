#author : ikexing

import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import crafttweaker.player.IPlayer;

FluidToItem.transform(<rustic:dust_tiny_iron> * 2, <liquid:ironberryjuice>, [<botania:dye>], true);
FluidToItem.transform(<contenttweaker:blood_symbolize>, <liquid:bloods>, [<minecraft:ender_eye>], true);

FluidToItem.transform(<contenttweaker:manablack_lotus> * 1, <liquid:mana>, [<actuallyadditions:block_black_lotus>], true);

FluidToFluid.transform(<liquid:bloods>, <liquid:blood>, [<ore:ingotElvenElementium> * 2]);
FluidToFluid.transform(<liquid:etchacid>, <liquid:water>, [<minecraft:gunpowder> * 2 , <minecraft:rotten_flesh> * 2 , <minecraft:spider_eye> * 2]);
