/* Recipe to activate the earth key using the botania altar */
val earthkey = <contenttweaker:earthkey>;
val earthkeyfrag = <contenttweaker:earthkeyfrag>;
val exoplate = <erebus:materials:0>;
val jade = <erebus:materials:1>;
val mahogany = <erebus:sapling_mahogany>;

mods.botania.RuneAltar.addRecipe( earthkey, [earthkeyfrag, mahogany, jade, exoplate], 2000);

