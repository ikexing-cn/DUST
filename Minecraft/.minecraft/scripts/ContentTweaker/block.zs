#author : ikexing
#priority 10
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;

function BlockBuilder(name as string, material as BlockMaterial, sound as SoundType, toolcls as string, toolel as int){
        var block = VanillaFactory.createBlock(name, material);
	block.setBlockSoundType(sound);
        block.setToolClass(toolcls);
        block.setToolLevel(toolel);
        block.blockResistance = 100.0;
	block.register();
}

BlockBuilder("cobblestone_magic", <blockmaterial:iron>, <soundtype:stone>, "pickaxe", 1);

BlockBuilder("blank_ore", <blockmaterial:iron>, <soundtype:metal>, "pickaxe", 1);

//魔力石
var stone_magic as Block = VanillaFactory.createBlock("stone_magic",<blockmaterial:rock>);
stone_magic.creativeTab = <creativetab:buildingBlocks>;
stone_magic.blockSoundType = <soundtype:stone>;
stone_magic.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
        drops.add(<item:contenttweaker:cobblestone_magic>);
        return;
});
stone_magic.register();