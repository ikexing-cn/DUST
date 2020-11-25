#author : ikexing
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var items as string[] = [
	"manablack_lotus",
	"whitenether_wart",
	"blood_symbolize",
	"flint_shard",
	"crude_knife",
	"grass_string"
];

for item in items{
	VanillaFactory.createItem(item).register();
}