/* Recipe to activate the water key using the smeltery */
var spiritsapling = <thebetweenlands:sapling_spirit_tree>;
var heart = <thebetweenlands:wight_heart>;
var valonite = <thebetweenlands:items_misc:19>;
var waterkeycore = <contenttweaker:waterkeyfrag>;
var waterkey = <contenttweaker:waterkey>;
var heartessence = <liquid:heart_essence>;
var treeessence = <liquid:spirit_essence>;
var liquidvalonite = <liquid:valonite>;
var waterkeyessence = <liquid:water_key_essence>;

mods.tconstruct.Melting.addRecipe( heartessence * 144, heart, 400 );
mods.tconstruct.Melting.addRecipe( treeessence * 144, spiritsapling, 400);
// mods.tconstruct.Melting.addRecipe( liquidvalonite * 144, valonite, 400);

mods.tconstruct.Alloy.addRecipe( waterkeyessence * 144, 
    [heartessence * 144, treeessence * 144, liquidvalonite * 666] );

mods.tconstruct.Casting.addBasinRecipe( waterkey, waterkeycore, waterkeyessence, 144, true, 200 );
