#author : ikexing

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IItemStack;

val machineName = "modular_centrifuge";
RecipeBuilder.newBuilder(machineName + "01",machineName,160).
    addManaInput(50000).
    addFluidInput(<liquid:lava> * 4000).
    addItemOutput(<techreborn:ingot:13> * 4).
    addItemOutput(<techreborn:ingot:4> * 1).
    addItemOutput(<techreborn:dust:14> * 1).setChance(0.4).
build();

RecipeBuilder.newBuilder(machineName + "02",machineName,160).
    addManaInput(50000).
    addFluidInput(<liquid:charcoal> * 1000).
    addItemOutput(<minecraft:coal:1> * 6).
    addItemOutput(<techreborn:dust:13> * 2).
    addItemOutput(<minecraft:coal:1> * 2).setChance(0.01).
build();