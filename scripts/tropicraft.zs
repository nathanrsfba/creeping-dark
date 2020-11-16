// Tweaks to entry into TropiCraft

// Allow mixer to be made from porphyry
var mixer = <tropicraft:drink_mixer>;
var mug = <tropicraft:bamboo_mug>;
var porph = <atum:porphyry>;

recipes.addShaped( "DrinkMixerPorph", mixer, [ 
[porph, porph, porph],
[porph, mug, porph],
[porph, porph, porph]
] );

// Force Pina Colada to be made in the mixer

var pina = <tropicraft:cocktail:0>;
recipes.remove( pina );

// Add Chunk to portal wand recipe

var wand = <tropicraft:portal_enchanter>;
var azurite = <tropicraft:azurite>;
var zircon = <tropicraft:zircon>;
var bamboo = <tropicraft:bamboo_stick>;
var chunk = <tropicraft:chunk>;

recipes.remove( wand );
recipes.addShaped( "TropicsPortalWand", wand, [ 
[azurite, chunk, zircon],
[zircon, bamboo, azurite],
[null, bamboo, null]
] );
recipes.addShaped( "TropicsPortalWandMirror", wand, [ 
[zircon, chunk, azurite],
[azurite, bamboo, zircon],
[null, bamboo, null]
] );


