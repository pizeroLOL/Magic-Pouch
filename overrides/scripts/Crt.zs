import mods.thaumcraft.Infusion;
import mods.botania.ElvenTrade;
import mods.embers.Alchemy;
import mods.bloodmagic.AlchemyTable;
import mods.embers.Stamper;
import mods.appliedenergistics2.Inscriber;
import mods.bloodmagic.BloodAltar;
import mods.embers.Melter;
import mods.astralsorcery.Altar;
import mods.botania.RuneAltar;
import mods.avaritia.ExtremeCrafting;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.thaumcraft.Crucible;
import mods.integrateddynamics.Squeezer;
import mods.initialinventory.InvHandler;
import mods.embers.Mixer;

//移除工作台配方
var items as IItemStack[] = [
    <eplus:advanced_table>,
    <eplus:table_upgrade>,
    <xat:glowing_ingot>,
    <xat:glowing_gem>,
    <xat:elf_sap>,
    <xat:faelis_food>,
    <xat:dwarf_stout>,
    <xat:dragon_gem>,
    <appliedenergistics2:part:140>,
    <appliedenergistics2:inscriber>,
    <appliedenergistics2:controller>,
    <appliedenergistics2:drive>,
    <appliedenergistics2:chest>,
    <appliedenergistics2:part:280>,
    <appliedenergistics2:part:281>,
    <appliedenergistics2:part:240>,
    <appliedenergistics2:part:241>,
    <appliedenergistics2:part:260>,
    <appliedenergistics2:part:261>,
    <appliedenergistics2:material:42>,
    <appliedenergistics2:quartz_glass> * 4,
    <appliedenergistics2:cell_workbench>,
    <appliedenergistics2:security_station>,
    <appliedenergistics2:crank>,
    <appliedenergistics2:grindstone>,
    <appliedenergistics2:material:40>,
    <appliedenergistics2:energy_acceptor>,
    <integratedtunnels:part_interface_fluid_item>,
    <integratedtunnels:part_interface_item_item>,
    <integratedtunnels:part_interface_item_item>,
    <integrateddynamics:cable>,
    <matc:prudentiumcrystal>,
    <matc:intermediumcrystal>,
    <matc:superiumcrystal>,
    <matc:supremiumcrystal>,
    <mysticalagriculture:master_infusion_crystal>,
    <mysticalagriculture:growth_accelerator>,
    <avaritia:compressed_crafting_table>,
    <avaritia:double_compressed_crafting_table>,
    <avaritia:extreme_crafting_table>,
    <minecraft:crafting_table> * 9,
    <tconstruct:smeltery_controller>,
	<tconstruct:seared_tank:*>,
	<tconstruct:faucet>,
	<tconstruct:channel>,
	<tconstruct:casting:*>,
	<tconstruct:seared_glass:*>,
	<tconstruct:smeltery_io>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:tinker_tank_controller>,
	<tconstruct:seared_slab:*>,
	<tconstruct:seared_slab2:*>,
	<tconstruct:cast>,
	<tconstruct:clay_cast>,
	<tconstruct:seared_stairs_stone>,
	<tconstruct:seared_stairs_cobble>,
	<tconstruct:seared_stairs_paver>,
	<tconstruct:seared_stairs_brick>,
	<tconstruct:seared_stairs_brick_cracked>,
	<tconstruct:seared_stairs_brick_fancy>,
	<tconstruct:seared_stairs_brick_triangle>,
	<tconstruct:seared_stairs_brick_square>,
	<tconstruct:seared_stairs_brick_small>,
	<tconstruct:seared_stairs_road>,
	<tconstruct:seared_stairs_tile>,
	<tconstruct:seared_stairs_creeper>,
	<tconstruct:soil>,
	<xat:titan_spirit>,
                <tinkersaddons:modifier_item:4>,
                <tinkersaddons:modifier_item:3>,
                <tinkersaddons:modifier_item:2>,
                <tinkersaddons:modifier_item:1>,
                <tconstruct:seared:*>
];

for i, item in items {
    recipes.remove(item);
}


//压印器配方移除

var inscribeitems as IItemStack[] = [
<appliedenergistics2:material:17>,
<appliedenergistics2:material:18>,
<appliedenergistics2:material:22>,
<appliedenergistics2:material:23>,
<appliedenergistics2:material:24>,
<appliedenergistics2:material:25> * 2,
<appliedenergistics2:material:28> * 2
];

for i, inscribeitem in inscribeitems {
    Inscriber.removeRecipe(inscribeitem);
}

//终极工作台配方移除

var extremeitems as IItemStack[] = [
<avaritia:resource:5>,
<avaritia:resource:6>
];

for i, extremeitem in extremeitems {
ExtremeCrafting.remove(extremeitem);
}

//JEI移除配方并隐藏

var jeiremoveandhideitems as IItemStack[] = [
    <appliedenergistics2:crank>,
    <appliedenergistics2:material:40>,
    <appliedenergistics2:grindstone>,
    <tconstruct:smeltery_controller>,
	<tconstruct:seared_tank:*>,
	<tconstruct:faucet>,
	<tconstruct:channel>,
	<tconstruct:casting:*>,
	<tconstruct:seared_glass:*>,
	<tconstruct:smeltery_io>,
	<tconstruct:seared_furnace_controller>,
	<tconstruct:tinker_tank_controller>,
	<tconstruct:seared_slab:*>,
	<tconstruct:seared_slab2:*>,
	<tconstruct:cast>,
	<tconstruct:clay_cast>,
	<tconstruct:seared_stairs_stone>,
	<tconstruct:seared_stairs_cobble>,
	<tconstruct:seared_stairs_paver>,
	<tconstruct:seared_stairs_brick>,
	<tconstruct:seared_stairs_brick_cracked>,
	<tconstruct:seared_stairs_brick_fancy>,
	<tconstruct:seared_stairs_brick_triangle>,
	<tconstruct:seared_stairs_brick_square>,
	<tconstruct:seared_stairs_brick_small>,
	<tconstruct:seared_stairs_road>,
	<tconstruct:seared_stairs_tile>,
	<tconstruct:seared_stairs_creeper>,
	<tconstruct:soil>,
	<tconstruct:seared:*>
];

for i, jeiremoveandhideitem in jeiremoveandhideitems {
JEI.removeAndHide(jeiremoveandhideitem);
}


//eplus

Infusion.registerRecipe("ach", "", <eplus:advanced_table>, 15, [<aspect:praecantatio>*50, <aspect:cognitio>*20, <aspect:alienis>*40, <aspect:vacuos>*40, <aspect:potentia>*40], <minecraft:enchanting_table>, [<botania:quartztypedark>, <botania:quartztypedark>, <botania:quartztypedark>, <botania:quartztypedark>, <botania:quartztypedark>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <thaumicwonders:disjunction_cloth:*>]);

//xat
recipes.addShaped(<xat:glowing_ingot>, [[<ore:dustGlowstone>, <ore:powderBlaze>, <ore:dustGlowstone>], [<ore:powderBlaze>, <ore:ingotBrass>, <ore:powderBlaze>],[<ore:dustGlowstone>, <ore:powderBlaze>, <ore:dustGlowstone>]]);
recipes.addShaped(<xat:glowing_ingot>, [[<ore:dustGlowstone>, <ore:powderBlaze>, <ore:dustGlowstone>], [<ore:powderBlaze>, <ore:ingotDawnstone>, <ore:powderBlaze>],[<ore:dustGlowstone>, <ore:powderBlaze>, <ore:dustGlowstone>]]);
recipes.addShaped(<xat:glowing_gem>, [[<ore:ingotGlowing>, <ore:dustGlowing>, <ore:ingotGlowing>], [<ore:dustGlowing>, <botania:storage:4>, <ore:dustGlowing>],[<ore:ingotGlowing>, <ore:dustGlowing>, <ore:ingotGlowing>]]);
recipes.addShaped(<xat:glowing_gem>, [[<ore:ingotGlowing>, <ore:dustGlowing>, <ore:ingotGlowing>], [<ore:dustGlowing>, <ore:blockThaumium>, <ore:dustGlowing>],[<ore:ingotGlowing>, <ore:dustGlowing>, <ore:ingotGlowing>]]);
ElvenTrade.addRecipe([<xat:elf_sap>], [<ore:bEnderAirBottle>,<xat:mana_crystal>]);
Infusion.registerRecipe("xff", "", <xat:faelis_food>, 5, [<aspect:alienis> * 30, <aspect:bestia> * 30, <aspect:aer> * 30, <aspect:sensus> * 15], <xat:mana_crystal>, [<thaumcraft:traveller_boots:*>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "aer"}]}), <thaumcraft:triple_meat_treat>, <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "bestia"}]}), <ore:gemGlowing>, <minecraft:red_flower:3>]);
Alchemy.add(<xat:dwarf_stout>, [<xat:mana_crystal>, <embers:adhesive>, <embers:pickaxe_dawnstone:*>, <embers:blend_caminite>, <forge:bucketfilled>.withTag({FluidName: "oil_dwarf", Amount: 1000})], {"lead":20 to 30, "dawnstone": 30 to 40, "iron":15 to 25});
AlchemyTable.addRecipe(<xat:dragon_gem>, [<xat:dragons_eye>, <bloodmagic:blood_shard>, <bloodmagic:sigil_blood_light:*>, <xat:arcing_orb>, <bloodarsenal:base_item:7>, <bloodmagic:sigil_divination>], 10000,200,2);
Altar.addTraitAltarRecipe("xts", <xat:titan_spirit>, 3000, 100, [
    <ore:gemGlowing>, null, <ore:gemGlowing>,null, <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.discidia"}}),
	null, <ore:gemGlowing>, null, <ore:gemGlowing>,null, null, null, null, null, null,
	null, null, null, null, null,
	null, <astralsorcery:itemcelestialcrystal:*>, <astralsorcery:itemcelestialcrystal:*>, <astralsorcery:itemcelestialcrystal:*>, <astralsorcery:itemcelestialcrystal:*>,
],
"astralsorcery.constellation.discidia");
//ae2
recipes.addShaped(<appliedenergistics2:part:140> * 3, [[<botania:managlass>, <botania:managlass>, <botania:managlass>], [<ore:dustQuartz>, <botania:corporeaspark>, <ore:dustQuartz>],[<botania:managlass>, <botania:managlass>, <botania:managlass>]]);
recipes.addShapedMirrored(<appliedenergistics2:inscriber>, [[<ore:ingotIron>, <minecraft:sticky_piston>, <ore:ingotIron>], [<ore:crystalFluix>, null, <ore:ingotIron>], [<ore:ingotIron>, <minecraft:sticky_piston>, <ore:ingotIron>]]);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <ore:ingotDawnstone>, true, <appliedenergistics2:material:15>);
Inscriber.addRecipe(<appliedenergistics2:material:18>, <ore:ingotBrass>, true, <appliedenergistics2:material:15>);
Inscriber.addRecipe(<appliedenergistics2:material:17>, <ore:manaDiamond>, true, <appliedenergistics2:material:14>);
Stamper.add(<appliedenergistics2:material:19>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:itemSilicon>);
Stamper.add(<appliedenergistics2:material:15>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:ingotBrass>);
Stamper.add(<appliedenergistics2:material:15>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:ingotDawnstone>);
Stamper.add(<appliedenergistics2:material:14>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:manaDiamond>);
Stamper.add(<appliedenergistics2:material:13>, <liquid:iron>*1296, <embers:stamp_flat>, <ore:crystalPureCertusQuartz>);
Inscriber.addRecipe(<appliedenergistics2:material:22>, <wizardry:devil_dust>, false, <appliedenergistics2:material:18>, <appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:24>, <wizardry:devil_dust>, false, <appliedenergistics2:material:17>, <appliedenergistics2:material:20>);
Inscriber.addRecipe(<appliedenergistics2:material:23>, <wizardry:devil_dust>, false, <appliedenergistics2:material:16>, <appliedenergistics2:material:20>);
recipes.addShaped(<appliedenergistics2:controller>, [[<thaumcraft:stone_arcane>, <ore:crystalPureFluix>, <thaumcraft:stone_arcane>], [<ore:crystalPureFluix>, <botania:corporeaindex>, <ore:crystalPureFluix>], [<thaumcraft:stone_arcane>, <ore:crystalPureFluix>, <thaumcraft:stone_arcane>]]);
recipes.addShaped(<appliedenergistics2:drive>, [[<ore:ingotIron>, <appliedenergistics2:material:24>, <ore:ingotIron>], [<appliedenergistics2:part:16>, <ore:chestObsidian>, <appliedenergistics2:part:16>], [<ore:ingotIron>, <appliedenergistics2:material:24>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:chest>, [[<botania:managlass>, <appliedenergistics2:part:380>, <botania:managlass>], [<appliedenergistics2:part:16>, <ore:chestObsidian>, <appliedenergistics2:part:16>], [<ore:ingotIron>, <ore:crystalFluix>, <ore:ingotIron>]]);
recipes.addShapeless(<appliedenergistics2:part:281>, [<appliedenergistics2:material:23>, <botania:animatedtorch>, <ore:dyeBlue>]);
recipes.addShapeless(<appliedenergistics2:part:280>, [<appliedenergistics2:material:23>, <botania:animatedtorch>]);
recipes.addShaped(<appliedenergistics2:part:240>, [[null, <appliedenergistics2:material:44>, null], [<ore:ingotIron>, <thaumcraft:hungry_chest>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:part:241>, [[<ore:dyeBlue>, <appliedenergistics2:material:44>, <ore:dyeBlue>], [<ore:ingotIron>, <embers:vacuum>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:part:260>, [[<ore:ingotIron>, <appliedenergistics2:material:43>, <ore:ingotIron>], [null, <embers:item_dropper>, null]]);
recipes.addShaped(<appliedenergistics2:part:261>, [[<ore:ingotIron>, <appliedenergistics2:material:43>, <ore:ingotIron>], [<ore:dyeBlue>, <embers:fluid_dropper>, <ore:dyeBlue>]]);
recipes.addShaped(<appliedenergistics2:cell_workbench>, [[<ore:ingotAstralStarmetal>, <appliedenergistics2:material:23>, <ore:ingotAstralStarmetal>], [<ore:ingotIron>, <ore:chestObsidian>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [[<ore:ingotIron>, <botania:managlass>, <ore:ingotIron>], [<botania:managlass>, <ore:crystalFluix>, <botania:managlass>], [<ore:ingotIron>, <botania:managlass>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:security_station>, [[<ore:ingotIron>, <appliedenergistics2:chest>, <ore:ingotIron>], [<appliedenergistics2:part:16>, <appliedenergistics2:material:37>, <appliedenergistics2:part:16>], [<ore:ingotIron>, <appliedenergistics2:material:24>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:material:42> * 2, [[<ore:dustFluix>, <ore:crystalCertusQuartz>, <witchery:ender_dew>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:quartz_glass> * 4, [[<ore:dustQuartz>, <botania:managlass>, <ore:dustQuartz>], [<botania:managlass>, <ore:dustQuartz>, <botania:managlass>], [<ore:dustQuartz>, <botania:managlass>, <ore:dustQuartz>]]);
Crucible.registerRecipe("ae1", "", <appliedenergistics2:material:8> * 2, <appliedenergistics2:material:7>, [<aspect:perditio>*5, <aspect:vitreus>*5]);
Crucible.registerRecipe("ae2", "", <appliedenergistics2:material:2> * 2, <appliedenergistics2:material>, [<aspect:perditio>*5, <aspect:vitreus>*5]);
Crucible.registerRecipe("ae3", "", <appliedenergistics2:material:3> * 2, <minecraft:quartz>, [<aspect:perditio>*5, <aspect:vitreus>*5]);
recipes.addShapedMirrored(<appliedenergistics2:material:25> * 2, [[<ore:ingotBrass>, <ore:ingotIron>, null], [<wizardry:devil_dust>, <appliedenergistics2:material:23>, <ore:ingotIron>], [<ore:ingotBrass>, <ore:ingotIron>, null]]);
recipes.addShapedMirrored(<appliedenergistics2:material:28> * 2, [[<ore:manaDiamond>, <ore:ingotIron>, null], [<wizardry:devil_dust>, <appliedenergistics2:material:23>, <ore:ingotIron>], [<ore:manaDiamond>, <ore:ingotIron>, null]]);
recipes.addShapedMirrored(<appliedenergistics2:material:25> * 2, [[<ore:ingotDawnstone>, <ore:ingotIron>, null], [<wizardry:devil_dust>, <appliedenergistics2:material:23>, <ore:ingotIron>], [<ore:ingotDawnstone>, <ore:ingotIron>, null]]);

Squeezer.addRecipe(<minecraft:wheat>, <appliedenergistics2:material:4>);

//indy
recipes.addShapeless(<integrateddynamics:menril_sapling>,[<integrateddynamics:menril_berries>, <integrateddynamics:menril_berries>, <integrateddynamics:menril_berries>, <ore:treeSapling>]);
BloodAltar.addRecipe(<integrateddynamics:menril_berries>, <rustic:ironberries>, 0, 3000,50,100);
recipes.addShaped(<integrateddynamics:cable> * 3 , [[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>], [<appliedenergistics2:part:16>, <wizardry:devil_dust>, <appliedenergistics2:part:16>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
recipes.addShaped(<integratedtunnels:part_interface_item_item> * 4, [[<integrateddynamics:crystalized_menril_chunk>, <appliedenergistics2:interface>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
recipes.addShaped(<integratedtunnels:part_interface_fluid_item> * 4, [[<integrateddynamics:crystalized_menril_chunk>, <appliedenergistics2:fluid_interface>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);

//embersconstruct

var basicmbii = <liquid:molten_blood_infused_iron>;
Melter.add(basicmbii*144, <ore:ingotBloodInfusedIron>);

var toolparts as IItemStack[] = [
<tconstruct:shard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:wide_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tool_rod>.withTag({Material: "blood_infused_iron"}),
<tconstruct:binding>.withTag({Material: "blood_infused_iron"}),
<tconstruct:wide_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:hand_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:cross_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:knife_blade>.withTag({Material: "blood_infused_iron"}),
<bloodarsenal:base_item:4>,
<tconstruct:sharpening_kit>.withTag({Material: "blood_infused_iron"}),
<tconstruct:shovel_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:axe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:sword_blade>.withTag({Material: "blood_infused_iron"}),
<tconstruct:pick_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:kama_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:arrow_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tough_tool_rod>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tough_binding>.withTag({Material: "blood_infused_iron"}),
<tconstruct:pan_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:sign_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:broad_axe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:large_sword_blade>.withTag({Material: "blood_infused_iron"}),
<tconstruct:hammer_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:excavator_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:scythe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:large_plate>.withTag({Material: "blood_infused_iron"})
];

var toolparts2 as IIngredient[] = [
<tconstruct:shard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:wide_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tool_rod>.withTag({Material: "blood_infused_iron"}),
<tconstruct:binding>.withTag({Material: "blood_infused_iron"}),
<tconstruct:wide_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:hand_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:cross_guard>.withTag({Material: "blood_infused_iron"}),
<tconstruct:knife_blade>.withTag({Material: "blood_infused_iron"}),
<bloodarsenal:base_item:4>,
<tconstruct:sharpening_kit>.withTag({Material: "blood_infused_iron"}),
<tconstruct:shovel_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:axe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:sword_blade>.withTag({Material: "blood_infused_iron"}),
<tconstruct:pick_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:kama_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:arrow_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tough_tool_rod>.withTag({Material: "blood_infused_iron"}),
<tconstruct:tough_binding>.withTag({Material: "blood_infused_iron"}),
<tconstruct:pan_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:sign_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:broad_axe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:large_sword_blade>.withTag({Material: "blood_infused_iron"}),
<tconstruct:hammer_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:excavator_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:scythe_head>.withTag({Material: "blood_infused_iron"}),
<tconstruct:large_plate>.withTag({Material: "blood_infused_iron"})
];

var stampparts as IIngredient[] = [
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:shard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:wide_guard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:tool_rod"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:binding"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:wide_guard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:hand_guard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:cross_guard"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:knife_blade"}),
<embers:stamp_bar>,
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:sharpening_kit"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:shovel_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:axe_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:sword_blade"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:pick_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:kama_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:arrow_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:tough_tool_rod"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:tough_binding"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:pan_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:sign_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:broad_axe_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:large_sword_blade"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:hammer_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:excavator_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:scythe_head"}),
<embersconstruct:stamp>.withTag({stamp: "embersconstruct:large_plate"})

];

// exchange by ldsdb

for i in 0 to 26{
var toolpart = toolparts[i];
var toolpart2 = toolparts2[i];
var stamppart = stampparts[i];
if (i==0){
Stamper.add(toolpart , basicmbii*72, stamppart);Melter.add(basicmbii*72, toolpart2);}
else if (i>0 && i<=8){
Stamper.add(toolpart , basicmbii*144, stamppart);Melter.add(basicmbii*144, toolpart2);}
else if (i>8 && i<=15){
Stamper.add(toolpart , basicmbii*288, stamppart);Melter.add(basicmbii*288, toolpart2);}
else if (i>15 && i<=19){
Stamper.add(toolpart , basicmbii*432, stamppart);Melter.add(basicmbii*432, toolpart2);}
else if (i>19 && i<=26){
Stamper.add(toolpart , basicmbii*1152, stamppart);Melter.add(basicmbii*1152, toolpart2);}
}

recipes.replaceAllOccurences(<tconstruct:cast>, <embersconstruct:stamp>);
Stamper.add(<tconstruct:firewood> , <liquid:lava> * 250, <embersconstruct:stamp>, <ore:plankWood>);

var arcanestones as IItemStack[] = [
<thaumcraft:stone_arcane>,
<chisel:arcane_stone:*>,
<chisel:arcane_stone1:*>
];

for i,arcanestone in arcanestones{
recipes.replaceAllOccurences(<tconstruct:seared>, arcanestone);
}

Mixer.add(<liquid:pigiron> * 4, [<liquid:iron> * 4, <liquid:blood> * 1, <liquid:clay> * 2]);
Mixer.add(<liquid:knightslime> * 2,[<liquid:iron> * 2, <liquid:purpleslime> * 1, <liquid:stone> * 2]);

//mysticalagriculture
RuneAltar.addRecipe(<matc:prudentiumcrystal>, [<matc:inferiumcrystal>, <ore:essencePrudentium>, <ore:essencePrudentium>, <ore:essencePrudentium>, <botania:specialflower>.withTag({type: "agricarnation"}), <ore:shardProsperity>, <ore:shardProsperity>, <ore:shardProsperity>], 20000);
Infusion.registerRecipe("mya3", "", <matc:intermediumcrystal>, 20, [<aspect:herba>*30, <aspect:praecantatio>*30, <aspect:victus>*30, <aspect:fabrico>*30], <matc:prudentiumcrystal>, [<thaumcraft:lamp_growth>, <ore:essenceIntermedium>, <astralsorcery:itemcoloredlens:2>, <ore:essenceIntermedium>, <thaumcraft:lamp_growth>, <ore:essenceIntermedium>, <thaumcraft:elemental_hoe>, <ore:essenceIntermedium>]);
BloodAltar.addRecipe(<matc:superiumcrystal>,  <matc:intermediumcrystal>, 4, 50000,100,200);
Alchemy.add(<matc:supremiumcrystal>,
	[<matc:superiumcrystal>.anyDamage(), <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>, <ore:essenceSupremium>],
	{"iron": 20 to 30, "dawnstone": 30 to 40});
Altar.addTraitAltarRecipe("mya5", <mysticalagriculture:master_infusion_crystal>, 4500, 200, [
    <bloodmagic:component:5>, null, <botania:specialflower>.withTag({type: "agricarnation"}),null, <matc:supremiumcrystal>.anyDamage(), 
	null, <evilcraft:blood_potash>, null, <embers:catalytic_plug>, <ore:essenceInsanium>,
<ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, null, null, 
	null, null, null, null, null,
	null, <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}}), <thaumcraft:elemental_hoe>, <thaumcraft:lamp_growth>, <astralsorcery:itemcoloredlens:2>,
    <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>, <ore:essenceInsanium>
],
"astralsorcery.constellation.aevitas");
recipes.addShaped(<mysticalagriculture:growth_accelerator>, [[<ore:blockInferiumEssence>, <ore:blockInferiumEssence>, <ore:blockInferiumEssence>], [<naturesaura:infused_iron>, <botania:specialflower>.withTag({type: "agricarnation"}), <naturesaura:infused_iron>], [<ore:blockInferiumEssence>, <ore:blockInferiumEssence>, <ore:blockInferiumEssence>]]);

//avaritia
recipes.addShaped(<avaritia:compressed_crafting_table>, [[<ore:blockNickel>, <twilightforest:block_storage>, <ore:blockBrass>], [<appliedenergistics2:fluix_block>, <minecraft:crafting_table>, <ore:blockEmerald>], [<ore:blockManasteel>, <naturesaura:infused_iron_block>, <wizardry:nacre_block>]]);
recipes.addShaped(<avaritia:extreme_crafting_table>, [[<ore:blockInsanium>, <ore:blockValonite>, <ore:blockVoid>], [<ebwizardry:crystal_block:4>, <avaritia:double_compressed_crafting_table>, <ore:blockBloodInfusedIron>], [<ore:blockAether>, <ore:blockTerrasteel>, <mist:soap_block>]]);
recipes.addShaped(<avaritia:double_compressed_crafting_table>, [[<ore:blockManyullyn>, <ore:blockElvenElementium>, <ore:blockNiobium>], [<ore:blockThaumium>, <avaritia:compressed_crafting_table>, <integrateddynamics:crystalized_menril_block>], [<ore:blockPsiMetal>, <ebwizardry:crystal_block>, <ore:blockDawnstone>]]);

ExtremeCrafting.addShapeless("ar5",<avaritia:resource:5>, [<ore:blockEmerald>, <avaritia:singularity>, <avaritia:singularity:1>, <avaritia:singularity:2>, <avaritia:singularity:3>, <avaritia:singularity:4>, <avaritia:ultimate_stew>, <avaritia:cosmic_meatballs>, <avaritia:endest_pearl>, <thaumcraft:primordial_pearl>, <thaumicaugmentation:material:5>, <appliedenergistics2:material:38>, <appliedenergistics2:material:47>, <avaritiatweaks:gaia_block>, <bloodmagic:decorative_brick:2>, <astralsorcery:itemtunedcelestialcrystal>, <ore:blockManyullyn>, <psi:material:2>, <psi:material:4>, <ore:ingotIronwood>, <xat:glowing_gem>, <wizardry:unicorn_horn>, <evilcraft:corrupted_tear>, <witchery:koboldite_ingot>, <naturesaura:sky_ingot>, <ore:record>, <naturalpledge:resource:10>, <avaritia:singularity:5>, <avaritia:singularity:6>, <avaritia:singularity:7>, <avaritia:singularity:8>, <avaritia:singularity:9>]);
Infusion.registerRecipe("infinityingot", "", <avaritia:resource:6>, 100, [<aspect:aer>*64, <aspect:aqua>*64, <aspect:ignis>*64, <aspect:terra>*64, <aspect:ordo>*64, <aspect:perditio>*64, <aspect:alienis>*64, <aspect:desiderium>*32, <aspect:praecantatio>*32], <avaritia:resource:5>, [<ore:ingotCrystalMatrix>, <thaumcraft:primordial_pearl:*>, <ore:ingotCosmicNeutronium>, <thaumcraft:primordial_pearl:*>, <ore:ingotCrystalMatrix>, <thaumcraft:primordial_pearl:*>, <ore:ingotCosmicNeutronium>, <thaumcraft:primordial_pearl:*>]);
Crucible.registerRecipe("infinitycraft", "", <avaritia:resource:5> * 2, <avaritia:resource:5>, [<aspect:praecantatio> * 500, <aspect:desiderium> * 500]);

//bloodmagic

recipes.addShaped(<bloodmagic:decorative_brick:2> , [[<bloodmagic:demon_crystal:*>, <bloodmagic:demon_crystal:*>, <bloodmagic:demon_crystal:*>], [<bloodmagic:demon_crystal:*>, <bloodmagic:demon_crystal:*>, <bloodmagic:demon_crystal:*>], [<bloodmagic:demon_crystal:*>, <bloodmagic:demon_crystal:*>, <bloodmagic:demon_crystal:*>]]);

//patchouli
var startingBook =
<akashictome:tome>.withTag({"akashictome:is_morphing": 1 as byte, "akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct", Damage: 0 as short}}, bloodarsenal: {id: "guideapi:bloodarsenal-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodarsenal"}, Damage: 0 as short}, astralsorcery: {id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, witchery5: {id: "witchery:symbology_book", Count: 1 as byte, tag: {"akashictome:definedMod": "witchery5"}, Damage: 0 as short}, witchery6: {id: "witchery:conjuration_and_fetishes_book", Count: 1 as byte, tag: {"akashictome:definedMod": "witchery6"}, Damage: 0 as short}, naturesaura: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "naturesaura", "patchouli:book": "naturesaura:book"}, Damage: 0 as short}, rustic: {id: "rustic:book", Count: 1 as byte, tag: {"akashictome:definedMod": "rustic"}, Damage: 0 as short}, botania: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, witchery: {id: "witchery:circle_magic_book", Count: 1 as byte, tag: {"akashictome:definedMod": "witchery"}, Damage: 0 as short}, bloodmagic: {id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}, witchery3: {id: "witchery:herbology_book", Count: 1 as byte, tag: {"akashictome:definedMod": "witchery3"}, Damage: 0 as short}, patchouli: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "patchouli", "patchouli:book": "patchouli:magicpouch"}, Damage: 0 as short}, twilightforest: {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "twilightforest", "patchouli:book": "twilightforest:guide"}, Damage: 0 as short}, witchery4: {id: "witchery:brews_and_infusions_book", Count: 1 as byte, tag: {"akashictome:definedMod": "witchery4"}, Damage: 0 as short}, integrateddynamics: {id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte, tag: {"akashictome:definedMod": "integrateddynamics"}, Damage: 0 as short}, thebetweenlands: {id: "thebetweenlands:manual_hl", Count: 1 as byte, tag: {"akashictome:definedMod": "thebetweenlands"}, Damage: 0 as short}, witchery1: {id: "witchery:distilling_book", Count: 1 as byte, tag: {"akashictome:definedMod": "witchery1"}, Damage: 0 as short}, witchery2: {id: "witchery:collecting_fumes_book", Count: 1 as byte, tag: {"akashictome:definedMod": "witchery2"}, Damage: 0 as short}}});
InvHandler.addStartingItem(startingBook);
JEI.addItem(startingBook);

//tinkers addons

recipes.addShaped(<tinkersaddons:modifier_item:2>, [[null, null, null],[<tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"}), <ore:blockThaumium>, <tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"})], [<tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"}), <tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"}), <tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"})]]);
recipes.addShaped(<tinkersaddons:modifier_item:1>, [[null, null, null],[<tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"}), <naturesaura:infused_iron_block>, <tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"})], [<tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"}), <tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"}), <tconstruct:large_plate>.withTag({Material: "aquamarine"}).onlyWithTag({Material: "aquamarine"})]]);
recipes.addShaped(<tinkersaddons:modifier_item:3>, [[null, null, null],[<tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"}), <ore:blockTerrasteel>, <tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"})], [<tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"}), <tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"}), <tconstruct:large_plate>.withTag({Material: "blood_infused_iron"}).onlyWithTag({Material: "blood_infused_iron"})]]);
recipes.addShaped(<tinkersaddons:modifier_item:4>, [[null, null, null],[<tconstruct:large_plate>.withTag({Material: "fierymetal"}).onlyWithTag({Material: "fierymetal"}), <witchery:koboldite_ingot>, <tconstruct:large_plate>.withTag({Material: "steeleaf"}).onlyWithTag({Material: "steeleaf"})], [<tconstruct:large_plate>.withTag({Material: "dawnstone"}).onlyWithTag({Material: "dawnstone"}), <tconstruct:large_plate>.withTag({Material: "pigiron"}).onlyWithTag({Material: "pigiron"}), <tconstruct:large_plate>.withTag({Material: "octine"}).onlyWithTag({Material: "octine"})]]);

//vanilla

recipes.addShaped(<minecraft:stone_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 42}], RepairCost: 1}), [[<ore:materialStoneTool>, <ore:materialStoneTool>, <ore:materialStoneTool>],[<ebwizardry:magic_crystal>, <ore:voodooPoppetProtectionLightning>, <ebwizardry:magic_crystal>], [null, <ore:voodooPoppetProtectionLightning>, null]]);
recipes.addShaped(<minecraft:iron_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 42}], RepairCost: 1}), [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:gemAmethyst>, <ore:voodooPoppetProtectionLightning>, <ore:gemAmethyst>], [null, <ore:voodooPoppetProtectionLightning>, null]]);
