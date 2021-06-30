#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


// Create the keys to make the End Key

var diamondkey = mods.contenttweaker.VanillaFactory.createItem( "diamondkey" );
diamondkey.register();

var rubykey = mods.contenttweaker.VanillaFactory.createItem( "rubykey" );
rubykey.register();
var sapphirekey = mods.contenttweaker.VanillaFactory.createItem( "sapphirekey" );
sapphirekey.register();
var emeraldkey = mods.contenttweaker.VanillaFactory.createItem( "emeraldkey" );
emeraldkey.register();
var amethystkey = mods.contenttweaker.VanillaFactory.createItem( "amethystkey" );
amethystkey.register();
var goldkey = mods.contenttweaker.VanillaFactory.createItem( "goldkey" );
goldkey.register();
var silverkey = mods.contenttweaker.VanillaFactory.createItem( "silverkey" );
silverkey.register();
var copperkey = mods.contenttweaker.VanillaFactory.createItem( "copperkey" );
copperkey.register();
var tinkey = mods.contenttweaker.VanillaFactory.createItem( "tinkey" );
tinkey.register();
var ironkey = mods.contenttweaker.VanillaFactory.createItem( "ironkey" );
ironkey.register();
var leadkey = mods.contenttweaker.VanillaFactory.createItem( "leadkey" );
leadkey.register();
var quicksilverkey = mods.contenttweaker.VanillaFactory.createItem( "quicksilverkey" );
quicksilverkey.register();
var endkey = mods.contenttweaker.VanillaFactory.createItem( "endkey" );
endkey.register();

// Element keys
var earthkey = mods.contenttweaker.VanillaFactory.createItem( "earthkey" );
earthkey.register();
var airkey = mods.contenttweaker.VanillaFactory.createItem( "airkey" );
airkey.register();
var firekey = mods.contenttweaker.VanillaFactory.createItem( "firekey" );
firekey.register();
var waterkey = mods.contenttweaker.VanillaFactory.createItem( "waterkey" );
waterkey.register();

// Element key fragments
var earthkeyfrag = mods.contenttweaker.VanillaFactory.createItem( "earthkeyfrag" );
earthkeyfrag.register();
var airkeyfrag = mods.contenttweaker.VanillaFactory.createItem( "airkeyfrag" );
airkeyfrag.register();
var firekeyfrag = mods.contenttweaker.VanillaFactory.createItem( "firekeyfrag" );
firekeyfrag.register();
var waterkeyfrag = mods.contenttweaker.VanillaFactory.createItem( "waterkeyfrag" );
waterkeyfrag.register();

// Disabled talisman head, to be activated using Mekanism
var talishead = mods.contenttweaker.VanillaFactory.createItem( "disabledtalismanhead" );
talishead.register();

// Fluids for reconstituting the water key

var liquidHeart = VanillaFactory.createFluid( "heart_essence", Color.fromHex("eeeeee"));
liquidHeart.register();
var liquidTree = VanillaFactory.createFluid( "spirit_essence", Color.fromHex("e5bf57"));
liquidTree.register();
var liquidValonite = VanillaFactory.createFluid( "liquid_valonite", Color.fromHex("f2eaf2"));
liquidValonite.register();
var waterKeyEssence = VanillaFactory.createFluid( "water_key_essence", Color.fromHex("0080c0"));
waterKeyEssence.register();


