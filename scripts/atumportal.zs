// Gate Resonator to IE
var circuit = <immersiveengineering:material:27>;
var resonator = <extrautils2:resonator>;
var redstone = <minecraft:redstone>;
var iron = <minecraft:iron_ingot>;
var redcrystal = <extrautils2:ingredients:0>;

recipes.remove( resonator );
recipes.addShaped( "resonator", resonator,
[[redstone, circuit, redstone],
[iron, redcrystal, iron],
[iron, iron, iron]] );

// Gate Atum to EU2 and TropiCraft
var scarab = <atum:scarab>;
var wand = <tropicraft:portal_enchanter>;

recipes.removeByRecipeName( "atum:scarab" );
mods.extrautils2.Resonator.add( scarab, wand, 0 );
