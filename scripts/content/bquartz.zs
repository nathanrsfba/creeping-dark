#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.VanillaFactory;

// Nether version of Black Quartz

var nbquartz = VanillaFactory.createBlock( 
    "netherblackquartz", <blockmaterial:rock> );

// Nether Black Quartz drops the regular stuff when mined
nbquartz.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add( <item:actuallyadditions:block_misc:3> );

    return;
});

nbquartz.register();
