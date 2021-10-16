use strict;

use File::Copy;

my $modfolder = 'mods';
my $repofolder = 'modrepo';
my $listfile = 'mods.txt';

chdir '..' if( -d "../$modfolder" && ! -d "$modfolder" );

open my $f, $listfile;
my @modlist = <$f>;
foreach (@modlist)
{
    s/[\r\n]//g;
}
# chomp @modlist;
close $f;

chdir $modfolder or die "Can't find mods folder";
my( @modfiles ) = <*.jar>;

for my $mod (@modfiles)
{
    if( ! -e "../$repofolder/$mod" )
    {
        if( ! -d "../$repofolder" )
        {
            mkdir "../$repofolder" or die "Couldn't mkdir $repofolder\n";
        }

        print "Archiving $mod...\n";
        copy( $mod, "../$repofolder/$mod" ) 
            or die "Couldn't copy $mod to $repofolder";
    }
}

my( $save, $load );

if( !@ARGV )
{
    # No action, neither load nor save
}
elsif( lc $ARGV[0] eq 'save' )
{
    $save = 1;
}
elsif( lc $ARGV[0] eq 'load' )
{
    $load = 1;
}
else
{
    print "Updates $listfile based on $modfolder/ and vice versa, and "
    . "archives and restores files to/from $repofolder/ as needed\n\n" .
    "Usage:\n\n" .
    "$0\n" .
    "  Archive mods and display " .
    "status of mods in $listfile and $modfolder/\n\n" .
    "$0 save\n" .
    "  Update $listfile from $modfolder/\n\n" .
    "$0 load\n" .
    "  Update $modfolder/ from $listfile using files in $repofolder/\n";
    exit;
}

my %modlist = map { $_ => 1 } @modlist;
my %modfiles = map { $_ => 1 } @modfiles;

my $action = 0;

if( $save )
{
    # This block just displays what changes are being made. We're just
    # going to dump @modfiles to disk at the end.
    for my $mod (@modfiles)
    {
        if( ! $modlist{$mod} )
        {
            print "Added $mod to list\n";
            $action++;
        }
    }

    for my $mod (@modlist)
    {
        if( ! $modfiles{$mod} )
        {
            print "Removed $mod from list\n";
            $action++;
        }
    }

    if( $action > 0 )
    {
        open my $f, ">../$listfile" or die "Couldn't open $listfile\n";
        for my $mod (sort {lc $a cmp lc $b} @modfiles)
        {
            print $f "$mod\n" or die "Error writing to $listfile\n";
        }
        close $f
    }
}
elsif( $load )
{
    for my $mod (@modfiles)
    {
        if( ! $modlist{$mod} )
        {
            unlink $mod or die "Couldn't delete $mod\n";
            print "Removed $mod\n";
            $action++;
        }
    }

    for my $mod (@modlist)
    {
        if( ! $modfiles{$mod} )
        {
            if( ! -e "../$repofolder/$mod" )
            {
                die "Can't restore $mod: Not archived in $repofolder/\n";
            }
            copy( "../$repofolder/$mod", '.' )
                or die "Couldn't copy $mod from $repofolder/\n";
            print "Restored $mod\n";
            $action++;
        }
    }
}
else
{
    for my $mod (@modfiles)
    {
        if( ! $modlist{$mod} )
        {
            print "Only in $modfolder/: $mod\n";
            $action++;
        }
    }

    for my $mod (@modlist)
    {
        if( ! $modfiles{$mod} )
        {
            print "Only in $listfile: $mod";
            if( ! -e "../$repofolder/$mod" )
            {
                print " (Not in repository)";
            }
            $action++;
            print "\n";
        }
    }
}

if( $action )
{
    if( $load or $save )
    {
        print "Synched $action files\n";
    }
    else
    {
        print "$action files to be synched\n";
    }
}
else
{
    print "$listfile and $modfolder/ are in sync\n";
}

exit $action;
