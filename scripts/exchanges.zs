var plat = <contenttweaker:platinumcoin>;
var gold = <contenttweaker:goldcoin>;
var silver = <contenttweaker:silvercoin>;
var bronze = <contenttweaker:bronzecoin>;
var copper = <contenttweaker:coppercoin>;

recipes.addShapeless( "PlatinumCondense", plat, 
[gold, gold, gold, gold, gold, gold, gold, gold] );
recipes.addShapeless( "PlatinumExpand", gold * 8, [plat] );

recipes.addShapeless( "GoldCondense", gold, 
[silver, silver, silver, silver, silver, silver, silver, silver] );
recipes.addShapeless( "GoldExpand", silver * 8, [gold] );

recipes.addShapeless( "SilverCondense", silver, 
[bronze, bronze, bronze, bronze, bronze, bronze, bronze, bronze] );
recipes.addShapeless( "SilverExpand", bronze * 8, [silver] );

recipes.addShapeless( "BronzeCondense", bronze, 
[copper, copper, copper, copper, copper, copper, copper, copper] );
recipes.addShapeless( "BronzeExpand", copper * 8, [bronze] );


