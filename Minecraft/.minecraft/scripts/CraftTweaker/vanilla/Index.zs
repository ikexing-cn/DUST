#author : ikexing
import crafttweaker.oredict.IOreDictEntry;

//打草掉落
vanilla.seeds.addSeed(<minecraft:carrot> % 8);
vanilla.seeds.addSeed(<minecraft:potato> % 8);
vanilla.seeds.addSeed(<minecraft:beetroot_seeds> % 8);
vanilla.seeds.addSeed(<minecraft:glowstone_dust> % 4);

vanilla.seeds.removeSeed(<survivalist:plant_fibres>);

//tooltips
<botania:manaresource:12>.addTooltip("§c红色的线等于红线（确信");
<botania:manaresource:12>.addShiftTooltip("§c我一直想不明白为什么原生植物魔法把这个改那么贵……");
<contenttweaker:manablack_lotus>.addTooltip("§b本应普通的花朵却沾染上了魔力……");
<contenttweaker:whitenether_wart>.addTooltip("§c可匠魂强化材料，具体信息请在工具装配台查看");
<contenttweaker:blank_ore>.addTooltip("§f貌似可以填充使得其变实……值得一试?");
<contenttweaker:stone_magic>.addTooltip("§b魔力失衡的产物");
<contenttweaker:crude_knife>.addTooltip("§2割草，割草，割草，重要的事情说三遍");

//汉化 / 重命名
<futuremc:netherite_ingot>.displayName = "下界合金锭";
<futuremc:ancient_debris>.displayName = "远古残骸";
<futuremc:netherite_scrap>.displayName = "下界合金碎片";
<futuremc:netherite_block>.displayName = "下界合金块";
<pneumaticcraft:ingot_iron_compressed>.displayName = "压缩钢锭";
<pneumaticcraft:compressed_iron_block>.displayName = "压缩钢块";
<pneumaticcraft:compressed_iron_gear>.displayName = "压缩钢齿轮";

//矿物词典
<ore:stone_magic>.add(<contenttweaker:stone_magic>);
<ore:oreUranium>.remove(<immersiveengineering:ore:5>);
<ore:oreNickel>.remove(<immersiveengineering:ore:4>);

//熔炉配方增加
furnace.addRecipe(<contenttweaker:stone_magic>, <contenttweaker:cobblestone_magic>,10);
