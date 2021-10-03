// Recipes for the End Key
val endkey = <contenttweaker:endkey>;
val rubykey = <contenttweaker:rubykey>;
val sapphirekey = <contenttweaker:sapphirekey>;
val emeraldkey = <contenttweaker:emeraldkey>;
val diamondkey = <contenttweaker:diamondkey>;
val amethystkey = <contenttweaker:amethystkey>;
val goldkey = <contenttweaker:goldkey>;
val silverkey = <contenttweaker:silverkey>;
val copperkey = <contenttweaker:copperkey>;
val tinkey = <contenttweaker:tinkey>;
val ironkey = <contenttweaker:ironkey>;
val leadkey = <contenttweaker:leadkey>;
val quicksilverkey = <contenttweaker:quicksilverkey>;
val airkey = <contenttweaker:airkey>;
val earthkey = <contenttweaker:earthkey>;
val firekey = <contenttweaker:firekey>;
var waterkey = <contenttweaker:waterkey>;
val endereye = <minecraft:ender_eye>;

// Create the end key using ... whichever altar that is.
mods.astralsorcery.Altar.addConstellationAltarRecipe(
    "plaguesky:shaped/internal/altar/endkey", endkey, 200, 100, [
    ironkey, // 0
    null, // 1
    tinkey, // 2
    goldkey, // 3
    silverkey, // 4
    copperkey, // 5
    rubykey, // 6
    diamondkey, // 7
    sapphirekey, // 8
    earthkey, // 9
    airkey, // 10
    firekey, // 11
    waterkey, // 12
    leadkey, // 13
    quicksilverkey, // 14
    null, // 15
    null, // 16
    null, // 17
    null, // 18
    emeraldkey, // 19
    amethystkey // 20
]);

// Recipe to duplicate the end key
recipes.addShapeless( "EndKeyDupe", endkey * 2, [endkey, endereye] );
