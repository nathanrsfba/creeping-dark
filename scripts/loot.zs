// Bosses no longer have their drops added using .addDrop, since it doesn't
// seem to work reliably.

// Wither no longer drops the iron key directly, since it doesn't have
// a loot table
// val wither = <entity:minecraft:wither>;
// wither.addDrop( <contenttweaker:ironkey> );

recipes.addShapeless( "ironkey", 
    <contenttweaker:ironkey>,
    [<minecraft:nether_star>] );

// Big Brother will now drop an inactive star, which can be used to
// duplicate normal nether stars
recipes.addShapeless( "activatestar", 
    <minecraft:nether_star> * 2, 
    [<contenttweaker:inactivestar>,
     <minecraft:nether_star>] );

// You can also activate it using the iron key
recipes.addShapeless( "activatestar2", 
    <minecraft:nether_star> * 2, 
    [<contenttweaker:inactivestar>,
     <contenttweaker:ironkey>] );

// Erebus bosses no longer drop their keys directly, since they don't
// have loot tables

// Tarantula Brood Mother drops the lead key
// val spider = <entity:erebus:erebus.tarantula_mini_boss>;
// spider.addDrop( <contenttweaker:leadkey> );
val spideregg = <erebus:tarantula_egg>;
val leadkey = <contenttweaker:leadkey>;
recipes.addShapeless( "leadkey", leadkey, [spideregg] );

// Antlion overlord drops the earth key fragment
// val antlion = <entity:erebus:erebus.antlion_boss>;
// antlion.addDrop( <contenttweaker:earthkeyfrag> );
val antlionegg = <erebus:antlion_egg>;
val earthkey = <contenttweaker:earthkeyfrag>;
recipes.addShapeless( "eartkeyfrag", earthkey, [antlionegg] );

// All other drop changes have been removed from ZenScript and moved into loot
// tables, since they seem to work more reliably

// Big Brother drops the amethyst key
// val brother = <entity:landcraft:big_brother>;
// brother.addDrop( <contenttweaker:amethystkey> );

// Also make sure he always drops at least 1 weather wand
// brother.addDrop( <landcraft:weather_wand> );

// I can't seem to access this loot table no matter what I do, so
// we'll just add it to the world defaults
// val queen = LootTables.getTable( "aether_legacy:valkyrie_queen" );
// val pool = queen.addPool( "silverkey", 1, 1, 0, 0 );
// pool.addItemEntry( <contenttweaker:silverkey>, 1 );

// Hydra drops the Ruby Key
// val hydra = <entity:twilightforest:hydra>;
// hydra.addDrop( <contenttweaker:rubykey> );

// Dark druid drops inactive talisman head
// (gated to Mekanism)
// val druid = <entity:thebetweenlands:dark_druid>;
// val talishead = <thebetweenlands:swamp_talisman:1>;
// val distalishead = <contenttweaker:disabledtalismanhead>;
// druid.removeDrop( talishead );
// druid.addDrop( distalishead );

// Dreadful peat mummy drops the emerald key
// val dread = <entity:thebetweenlands:dreadful_mummy>;
// dread.addDrop( <contenttweaker:emeraldkey> );

// Primordial malevolence drops the water key fragment
// val malevolence = <entity:thebetweenlands:fortress_boss>;
// malevolence.addDrop( <contenttweaker:waterkeyfrag> );

