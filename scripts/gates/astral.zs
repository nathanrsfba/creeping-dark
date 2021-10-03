// Gate Astral Sorcery to Thaumcraft
val pearl = <minecraft:ender_pearl>;
val marble = <ore:stoneMarble>;
val aqua = <astralsorcery:itemcraftingcomponent>;
val reswand = <astralsorcery:itemwand>;

recipes.remove( reswand );

mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe( 
    "reswand", "", 20,       // Recipe name, research, vis usage
    [],                      // Required vis crystals 
    reswand,                 // Output
    [[null, aqua, pearl],    // Inputs
     [null, marble, aqua],
     [marble, null, null]] );

