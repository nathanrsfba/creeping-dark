// Resolve barley seed/flour conflict

val bflour = <natura:materials:1>;
val nbarley = <natura:materials:0>;

recipes.remove( bflour );
recipes.addShapeless( "BarleyFlourNew", bflour, [nbarley] );
