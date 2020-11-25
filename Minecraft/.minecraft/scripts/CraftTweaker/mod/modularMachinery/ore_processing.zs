#author : ikexing

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

import crafttweaker.item.IItemStack;

function ore_processing(name as string , name2 as string , itemInput as IItemStack , itemInput2 as IItemStack , itemOutput as IItemStack){
    val machineName = "ore_processing";
    RecipeBuilder.newBuilder(machineName + name,machineName,160).
        addManaInput(10000).
        addItemOutput(itemOutput).
        addItemInput(itemInput).
        addItemInput(itemInput2 * 8).
    build();

    RecipeBuilder.newBuilder(machineName + name2,machineName,80).
        addManaInput(1000).
        addItemOutput(itemInput).
        addItemOutput(itemInput2 * 8).
        addItemInput(itemOutput).
    build();
}
ore_processing("01","02",<contenttweaker:blank_ore>,<techreborn:dust:27>,<minecraft:iron_ore>);
ore_processing("03","04",<contenttweaker:blank_ore>,<techreborn:dust:53>,<techreborn:ore2:1>);
ore_processing("05","06",<contenttweaker:blank_ore>,<techreborn:dust:18>,<minecraft:emerald_ore>);
ore_processing("07","08",<contenttweaker:blank_ore>,<minecraft:redstone>,<minecraft:redstone_ore>);
ore_processing("09","10",<contenttweaker:blank_ore>,<techreborn:dust:28>,<minecraft:lapis_ore>);
ore_processing("11","12",<contenttweaker:blank_ore>,<techreborn:dust:13>,<minecraft:coal_ore>);
ore_processing("13","14",<contenttweaker:blank_ore>,<techreborn:dust:24>,<minecraft:gold_ore>);
ore_processing("15","16",<contenttweaker:blank_ore>,<techreborn:dust:29>,<techreborn:ore:12>);
ore_processing("17","18",<contenttweaker:blank_ore>,<techreborn:dust:16>,<minecraft:diamond_ore>);
ore_processing("19","20",<contenttweaker:blank_ore>,<techreborn:dust:47>,<techreborn:ore:13>);