// Erebus bosses no longer drop their keys directly, since they don't
// have loot tables

// Tarantula Brood Mother egg contains the lead key
val spideregg = <erebus:tarantula_egg>;
val leadkey = <contenttweaker:leadkey>;
recipes.addShapeless( "leadkey", leadkey, [spideregg] );

// Antlion overlord egg contains the earth key fragment
val antlionegg = <erebus:antlion_egg>;
val earthkey = <contenttweaker:earthkeyfrag>;
recipes.addShapeless( "eartkeyfrag", earthkey, [antlionegg] );
