#author : ikexing
#priority -10

mods.extendedcrafting.TableCrafting.addShaped(2, <botania:alfheimportal>, [
	[<botania:livingwood0stairs>, <ore:livingwood>, <botania:livingwood:2>, <ore:livingwood>, <botania:livingwood0stairs>], 
	[<ore:livingwood>, <ore:livingwood>, <ore:livingrock>, <ore:livingwood>, <ore:livingwood>], 
	[<botania:livingwood:5>, <ore:livingrock>, <botanianeedsit:mana_capacitor_terrasteel>, <ore:livingrock>, <botania:livingwood:5>], 
	[<ore:livingwood>, <ore:livingwood>, <ore:livingrock>, <ore:livingwood>, <ore:livingwood>], 
	[<botania:livingwood0stairs>, <ore:livingwood>, <botania:livingwood:2>, <ore:livingwood>, <botania:livingwood0stairs>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <extendedcrafting:table_advanced>, [
	[<ore:runeSpringB>, <ore:dustGlowstone>, <ore:runeAutumnB>], 
	[<ore:glowstone>, <extendedcrafting:table_basic>, <ore:glowstone>], 
	[<ore:runeSummerB>, <ore:runeManaB>, <ore:runeWinterB>]
]);

mods.extendedcrafting.TableCrafting.addShaped(0, <bloodmagic:soul_forge>, [
	[<ore:ingotBlackIron>, null, <ore:ingotBlackIron>], 
	[<ore:bricksStone>, <ore:ingotIron>, <ore:bricksStone>], 
	[<ore:bricksStone>, <ore:blockBlackIron>, <ore:bricksStone>]
]);	


mods.extendedcrafting.TableCrafting.addShaped(2, <bloodmagic:altar>, [
	[<bloodmagic:monster_soul>, null, null, null, <bloodmagic:monster_soul>], 
	[<ore:bricksStone>, null, <bloodmagic:monster_soul>, null, <ore:bricksStone>], 
	[<ore:bricksStone>, <ore:bricksStone>, <contenttweaker:blood_symbolize>.reuse(), <ore:bricksStone>, <ore:bricksStone>], 
	[<ore:bricksStone>, <ore:blockRedstone>, <minecraft:furnace>, <ore:blockRedstone>, <ore:bricksStone>], 
	[<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>]
]);

mods.extendedcrafting.TableCrafting.addShaped(2, <bloodmagic:incense_altar>, [
	[null, null, <bloodmagic:monster_soul>, null, null], 
	[<ore:bricksStone>, null, <contenttweaker:blood_symbolize>.reuse(), null, <ore:bricksStone>], 
	[<ore:bricksStone>, <ore:glowstone>, <bloodmagic:soul_forge>, <ore:glowstone>, <ore:bricksStone>], 
	[<ore:bricksStone>, <bloodmagic:monster_soul>, <ore:glowstone>, <bloodmagic:monster_soul>, <ore:bricksStone>], 
	[<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>]
]);