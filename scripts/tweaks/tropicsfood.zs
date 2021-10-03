#ignoreBracketErrors

import crafttweaker.item.IItemStack;

// Add oredict entries for Tropics food
<ore:cropGrapefruit>.add( <tropicraft:grapefruit> );
<ore:cropLemon>.add( <tropicraft:lemon> );
<ore:cropLime>.add( <tropicraft:lime> );
<ore:cropOrange>.add( <tropicraft:orange> );
val citrus = [<tropicraft:grapefruit>, <tropicraft:lemon>,
    <tropicraft:lime>, <tropicraft:orange>] as IItemStack[];
<ore:listAllfruit>.add( citrus );
<ore:listAllcitrus>.add( citrus );
<ore:listAllfishraw>.add( <tropicraft:fresh_marlin>,
    <tropicraft:ray_raw> );
<ore:listAllfishfresh>.add( <tropicraft:fresh_marlin>,
    <tropicraft:ray_raw> );
<ore:listAllfishcooked>.add( <tropicraft:seared_marlin>,
    <tropicraft:ray_cooked> );
<ore:cropCoconut>.add( <tropicraft:coconut_chunk> );
<ore:cropPineapple>.add( <tropicraft:pineapple_cubes> );
<ore:listAllfruit>.add( <tropicraft:pineapple_cubes> );
<ore:cropCoffee>.add( <tropicraft:coffee_beans> );
<ore:listAllfishraw>.add( <tropicraft:raw_fish:*> );
<ore:listAllfishraw>.add( <tropicraft:raw_river_fish:*> );
<ore:listAllfishfresh>.add( <tropicraft:raw_fish:*> );
<ore:listAllfishfresh>.add( <tropicraft:raw_river_fish:*> );
<ore:listAllfishcooked>.add( <tropicraft:cooked_fish:*> );
<ore:listAllfishcooked>.add( <tropicraft:cooked_river_fish:*> );
<ore:listAllveggie>.add( <tropicraft:nori_raw> );
<ore:listAllgreenveggie>.add( <tropicraft:nori_raw> );
<ore:cropSeaweed>.add( <tropicraft:nori_raw> );

// Ability to chop coconuts and pineapple using the cutting board

val board = <harvestcraft:cuttingboarditem>;
recipes.addShapeless( "coconutchunk", <tropicraft:coconut_chunk>,
    [board, <harvestcraft:coconutitem> | <tropicraft:coconut>] );
recipes.addShapeless( "pineapplechunk", <tropicraft:pineapple_cubes>,
    [board, <harvestcraft:pineappleitem> | <tropicraft:pineapple>] );
