// Redefine Big Metal Bar recipe, to not conflict with
// rusty ladder (which we've redefined elsewhere)

val iron = <minecraft:iron_ingot>;
val wrench = <openblocks:wrench>;
val ladder = <malisisdoors:rustyladder>;

recipes.remove( wrench );
recipes.addShaped( "MetalBarNew", wrench, [ 
[null, iron, iron],
[iron, iron, iron],
[iron, iron, null]
] );


