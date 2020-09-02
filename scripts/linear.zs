val temachframe = <thermalexpansion:frame>;
val tedevframe = <thermalexpansion:frame:64>;
val rftmachframe = <rftools:machine_frame>;

val tingear = <ore:gearTin>;
val coppergear = <ore:gearCopper>;
val glass = <ore:blockGlass>;
val certus = <ore:crystalCertusQuartz>;
val iron = <ore:ingotIron>;
val tin = <ore:ingotTin>;
val lapis = <ore:dyeBlue>;
val goldnug = <ore:nuggetGold>;

/* Add certus to TE Machine Frame recipe */
recipes.remove( temachframe );
recipes.addShaped( "TEMachineFrame", temachframe, [ 
[iron, certus, iron],
[glass, tingear, glass],
[iron, certus, iron]
] );

/* Add certus to TE Device Frame recipe */
recipes.remove( tedevframe );
recipes.addShaped( "TEDeviceFrame", tedevframe, [ 
[tin, certus, tin],
[glass, coppergear, glass],
[tin, certus, tin]
] );

/* Add certus to RFT Machine Frame recipe */
recipes.remove( rftmachframe );
recipes.addShaped( "RFTMachineFrame", rftmachframe, [ 
[iron, lapis, iron],
[goldnug, certus, goldnug],
[iron, lapis, iron]
] );

/* Convert AA crystal shards to Thaumcraft shards */

val redshard = <actuallyadditions:item_crystal_shard:0>;
val blueshard = <actuallyadditions:item_crystal_shard:1>;
val cyanshard = <actuallyadditions:item_crystal_shard:2>;
val blackshard = <actuallyadditions:item_crystal_shard:3>;
val greenshard = <actuallyadditions:item_crystal_shard:4>;
val whiteshard = <actuallyadditions:item_crystal_shard:5>;

val airshard = <thaumcraft:crystal_essence>.withTag({ Aspects:[{amount:1, key:"aer"}]});
val earthshard = <thaumcraft:crystal_essence>.withTag({ Aspects:[{amount:1, key:"terra"}]});
val fireshard = <thaumcraft:crystal_essence>.withTag({ Aspects:[{amount:1, key:"ignis"}]});
val watershard = <thaumcraft:crystal_essence>.withTag({ Aspects:[{amount:1, key:"aqua"}]});
val ordershard = <thaumcraft:crystal_essence>.withTag({ Aspects:[{amount:1, key:"ordo"}]});
val entropyshard = <thaumcraft:crystal_essence>.withTag({ Aspects:[{amount:1, key:"perditio"}]});

mods.botania.ManaInfusion.addInfusion( airshard, cyanshard, 1000 );
mods.botania.ManaInfusion.addInfusion( earthshard, greenshard, 1000 );
mods.botania.ManaInfusion.addInfusion( fireshard, redshard, 1000 );
mods.botania.ManaInfusion.addInfusion( watershard, blueshard, 1000 );
mods.botania.ManaInfusion.addInfusion( ordershard, whiteshard, 1000 );
mods.botania.ManaInfusion.addInfusion( entropyshard, blackshard, 1000 );


/* Gate Astral Sorcery to Thaumcraft */
val pearl = <minecraft:ender_pearl>;
val marble = <ore:stoneMarble>;
val aqua = <astralsorcery:itemcraftingcomponent>;
val reswand = <astralsorcery:itemwand>;

recipes.remove( reswand );
// mods.astralsorcery.Altar.removeAltarRecipe( "astralsorcery:shaped/internal/altar/tool_basicwand" );

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe( 
    "reswand", "", 20,       // Recipe name, research, vis usage
    [],                      // Required vis crystals 
    reswand,                 // Output
    [[null, aqua, pearl],    // Inputs
     [null, marble, aqua],
     [marble, null, null]] );

