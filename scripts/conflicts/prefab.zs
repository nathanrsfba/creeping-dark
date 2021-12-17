// Resolve conflicts with Prefab's compressed dirt and EU2

// Add Prefab's compressed dirt to EU2's ore entries
val dirt1x = <ore:compressed1xDirt>;
val pfdirt1x = <prefab:block_compressed_dirt>;
dirt1x.add( pfdirt1x );
val dirt2x = <ore:compressed2xDirt>;
val pfdirt2x = <prefab:block_double_compressed_dirt>;
dirt2x.add( pfdirt2x );

// Allow either prefab or eu2 compressed dirt in prefab recipes
recipes.replaceAllOccurences( pfdirt1x, dirt1x );
recipes.replaceAllOccurences( pfdirt2x, dirt2x );
// Also, how did I go so long before discovering recipes.replaceAllOccurences?

// Replace recipes for Prefab's compressed dirt
recipes.remove( pfdirt1x );
recipes.addShaped( "pfdirt1xReplaced", pfdirt1x * 4, [
[dirt1x, dirt1x],
[dirt1x, dirt1x]
] );

recipes.remove( pfdirt2x );
recipes.addShaped( "pfdirt2xReplaced", pfdirt2x * 4, [
[dirt2x, dirt2x],
[dirt2x, dirt2x]
] );

recipes.addShaped( "pfdirt2xReplaced9x9", pfdirt2x * 4, [
[pfdirt1x, pfdirt1x, pfdirt1x],
[pfdirt1x, pfdirt1x, pfdirt1x],
[pfdirt1x, pfdirt1x, pfdirt1x]
] );

// Resolve conflict between bundle of timber and oak bark
val timber = <prefab:item_bundle_of_timber>;
val bark = <quark:bark>;
recipes.remove( timber );
recipes.addShapeless( "timberReplaced", 
    timber,
    [bark, bark, bark, bark, bark, bark, bark, bark, bark] );

// Resolve conflicts with slabs
function replaceSlab( matname as string, stonetype as int ) {
    val pfslab = itemUtils.getItem( 
        "prefab:block_half_" + matname + "_slab" );
    val qslab = itemUtils.getItem(
        "quark:stone_" + matname + "_slab" );
    val stone = itemUtils.getItem( "minecraft:stone", stonetype );

    recipes.remove( pfslab );
    recipes.addShapeless( matname + "SlabReplaced", pfslab, [qslab] );
    recipes.addShapeless( matname + "SlabReplacedUndo", 
        stone * 2, [pfslab, pfslab] );
}

replaceSlab( "andesite", 5 );
replaceSlab( "diorite", 3 );
replaceSlab( "granite", 2 );

// Resolve conflicts with stairs
function replaceStair( matname as string, stonetype as int ) {
    val pfstair = itemUtils.getItem( 
        "prefab:block_" + matname + "_stairs" );
    val qstair = itemUtils.getItem(
        "quark:stone_" + matname + "_stairs" );
    val stone = itemUtils.getItem( "minecraft:stone", stonetype );

    recipes.remove( pfstair );
    recipes.addShapeless( matname + "StairReplaced", pfstair, [qstair] );
    recipes.addShaped( matname + "StairReplacedUndo", 
        stone * 3, [
            [pfstair, pfstair], 
            [pfstair, pfstair]
        ]);
}

replaceStair( "andesite", 5 );
replaceStair( "diorite", 3 );
replaceStair( "granite", 2 );
