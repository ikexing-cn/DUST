#author : ikexing
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.BlockHarvestDropsEvent;

import crafttweaker.util.Position3f;
import mods.ctutils.utils.Math;
import crafttweaker.command.ICommandManager;


import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

//微光石
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    var block = event.block.definition.id;
    var blr =  "botania:livingrock";

    if(block has blr){
        var pos = Position3f.create(event.x, event.y, event.z).asBlockPos();
        var CurrentItem = event.player.currentItem;

        if (!isNull(CurrentItem) && !event.world.remote && CurrentItem.definition.id has "botania:lightrelay"){
            //<potion:minecraft:strength>.makePotionEffect(90,1,true,false).performEffect(event.player);
            event.world.setBlockState(<blockstate:botania:shimmerrock>, pos);
        }
    }
});

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    val block = event.block.definition.id;
    val player as IPlayer = event.player;
    val obsidian = "minecraft:obsidian";
    val stone = "minecraft:stone";
    var CurrentItem as IItemStack = player.currentItem;

    if(block has obsidian){if (!isNull(CurrentItem) && !event.world.remote && CurrentItem.definition.id has "minecraft:ender_pearl") {event.cancel();}}
    if(block has stone){if (!isNull(CurrentItem) && !event.world.remote && CurrentItem.definition.id has "minecraft:flint") {event.cancel();}}

});
events.onPlayerInteract(function(event as PlayerInteractEvent){
    val block = event.block.definition.id;
    val player as IPlayer = event.player;
    var c = server.commandManager as ICommandManager;
    val obsidian = "minecraft:obsidian";
    val stone = "minecraft:stone";
    var CurrentItem as IItemStack = player.currentItem;

    if(block has obsidian){
        if (!isNull(CurrentItem) && !event.world.remote && CurrentItem.definition.id has "minecraft:ender_pearl"){
            c.executeCommand(server,"clear " + player.name + " ender_pearl 0 1");
            player.give(<extrautils2:endershard> * 8);
        }
    }
    if(block has stone){
        if(!isNull(CurrentItem) && !event.world.remote && CurrentItem.definition.id has "minecraft:flint"){
        val result = Math.round(Math.random() * 10);
            if(result <= 3 && result != 0) {
                c.executeCommand(server,"clear " + player.name + " flint 0 1");
                player.give(<contenttweaker:flint_shard> * result);
            }
        }
    }
});
//打草掉落
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent){
    val block = event.block;
    val player as IPlayer = event.player;
    val grass = "minecraft:tallgrass";

    if(block.definition.id has grass && event.isPlayer){
        if (!isNull(player.currentItem) && !event.world.remote && player.currentItem has <contenttweaker:crude_knife>){
            val result = Math.round(Math.random() * 10);
            if(result >= 5) event.drops += <survivalist:plant_fibres> % 75;
        }
    }
});
