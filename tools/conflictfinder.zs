#loader crafttweaker

import crafttweaker.recipes.ICraftingRecipe;
import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

global badIngredients as string[] = [
"minecraft:filled_map"
];

events.onCommand(function(event as CommandEvent) {
    val command = event.command;
    if(isNull(command) || (command.name != "crafttweaker") || (event.parameters.length == 0) || (event.parameters[0] != "findconflict")) {
        return;
    }

    var verbose = false;
    if( event.parameters.length > 1 ) {
        if( event.parameters[1] has "v" ) {
            verbose = true;
        }
        
    }
    findConflicts( verbose );

    if(event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;
        player.sendChat("Recipe conflict report sent to CraftTweaker log");
    }
    event.cancel();
});

function findConflicts( verbose as bool ) {
    var recipe as ICraftingRecipe = null;

    print( "Conflict report: " + verbose );
    // List of craftable items, indexed by their crafting recipe
    var ingList = {} as string[string];

    for recipe in recipes.all {
        var ingstr = ingredientString( recipe );

        var name = "";
        if( isNull( recipe.output )) {
            name = recipe.name;
        }
        else {
            name = itemID( recipe.output );
        }

        if( ingstr != "" ) {
            if( !isNull( ingList[ingstr] )) {
                // If another item has the same recipe, flag it
                print( name + ": same recipe as " + ingList[ingstr] );
            }
            else {
                // ...otherwise, add it to the list
                ingList[ingstr] = name;
                // print( recipe.name + " = " + ingstr );
            }

            // Try to actually craft the ingredients, and see if it actually
            // creates the alleged output
            if( verbose ) {
                print( "Testing " + name + ": " + ingredientString( recipe ));
            }
            var testCraft = craftItem( recipe.ingredients2D );
            if( !isNull( testCraft )) {
                var testCraftID = itemID( testCraft );
                if( testCraftID != name ) {
                    print( name + ": recipe crafts " + testCraftID );
                }
            }
        }


    }
}

// Turn a recipe's ingredient list into a string
// In the format "thing,thing,thing/thing,thing,thing/thing,thing,thing"

function ingredientString( recipe as ICraftingRecipe ) as string {
    var ingstr = "";

    for y in recipe.ingredients2D {
        var ingrow = "";
        if( ingstr != "" ) ingstr = ingstr + "/";
        for x in y {
            if( ingrow != "" ) ingrow = ingrow + "+";
            if( isNull( x )) {
                ingrow = ingrow + "null";
            }
            else {
                ingrow = ingrow + x.commandString;
            }
        }
        if( ingrow != "" ) ingstr = ingstr + ingrow;
    }

    return ingstr;
}

function craftItem( recipe as IIngredient[][] ) as IItemStack {
    var newRecipe = [[null, null, null, null, null, null, null, null, null], 
    [null, null, null], [null, null, null]] as IIngredient[][];

    for y, row in recipe {
        for x, item in row {
            if( !isNull( item )) {
                // print( "Item def: " + item.items[0].definition.id );
                if( item.items.length == 0 || 
                    badIngredients has (item.items[0].definition.id) ) {
                    return null;
                }
                newRecipe[y][x] = item.items[0];
            }
        }
    }
    return recipes.craft( newRecipe );
}

// Return an item's ID (as "mod:item:meta")
function itemID( item as IItemStack ) as string {
    val meta = item.metadata;
    val id = item.definition.id;
    val mod = item.definition.owner;

    if( meta == 0 ) {
        return id;
    }
    else {  

        return id + ":" + meta;
    }
}

