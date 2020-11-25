#author : misterplus_cn
#nice try……
#modloaded torcherino

import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.command.ICommandManager;
import crafttweaker.util.Position3f;

var torches = ["torcherino:blocktorcherino", "torcherino:blockcompressedtorcherino", "torcherino:blockdoublecompressedtorcherino"] as string[];
var lanterns = ["torcherino:blocklanterino", "torcherino:blockcompressedlanterino", "torcherino:blockdoublecompressedlanterino"] as string[]; 
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
	var id = event.block.definition.id;
    var s = server.commandManager as ICommandManager;
    if (!event.world.remote && (torches has id || lanterns has id)) {
        var world = event.world;
        var pos = Position3f.create(event.x, event.y, event.z).asBlockPos();
        var facing = world.getBlockState(pos).getPropertyValue("facing");
        if (torches has id)
            world.setBlockState(<blockstate:futuremc:soul_fire_torch>, pos);
        else
            world.setBlockState(<blockstate:minecraft:lit_pumpkin>.withProperty("facing", facing), pos);
        s.executeCommand(server, "playsound minecraft:record.chirp master " + event.player.name + " " + event.x + " " + event.y + " " + event.z);
    }
});

