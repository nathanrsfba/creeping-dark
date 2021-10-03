import crafttweaker.item.IIngredient;

// Make skyroot trees from overworld trees
var oaksap = <minecraft:sapling:0>;
var skysap = <aether_legacy:skyroot_sapling>;
var sprucesap = <minecraft:sapling:1>;
var dirt = <minecraft:dirt>;
var aethdirt = <aether_legacy:aether_dirt>;
var coarsedirt = <minecraft:dirt:1>;

mods.botania.ManaInfusion.addConjuration( skysap, oaksap, 1000 );
mods.botania.ManaInfusion.addConjuration( sprucesap, skysap, 1000 );
mods.botania.ManaInfusion.addConjuration( aethdirt, dirt, 1000 );
mods.botania.ManaInfusion.addConjuration( coarsedirt, aethdirt, 1000 );
