## install and use

- `git clone git://github.com/arbales/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

You can easily edit the dotfiles with `dotmate` and easily switch to the
directory with `dotcd`.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `rake install`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you. Fork it, remove what you
don't use, and build on what you do use.

###system
- `c` is an autocomplete shortcut to your Workspace. For example, `c
  git` and then hitting tab will autocomplete to `github`, and then it simply
  changes to my `github` directory. The projects directory is defined in
  [`zsh/zshrc.symlink`](https://github.com/holman/dotfiles/blob/master/zsh/zshrc.symlink).
- `check [filename]` is a quick script that tells you whether a domain is
  available to register.
- `smartextract [filename]` will extract about a billion different
  compressed/uncompressed/whatever files and you'll never have to remember the
  syntax.
- `backup` is a quick hook into `rsync` to backup a selection of files. Check
  out the comments for more details.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `rake install`.
- **topic/\*.completion.sh**: Any files ending in `completion.sh` get loaded
  last so that they get loaded after we set up zsh autocomplete functions.

## add-ons

There are a few things I use to make my life awesome. They're not a required
dependency, but if you install them they'll make your life a bit more like a
bubble bath.

- If you want some more colors for things like `ls`, install grc: `brew install
  grc`.


## thanks

@arbales forked [Zach Holman](http://github.com/holman)'s excellent dotfiles.

@holman forked [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](http://github.com/ryanb/dotfiles) for a couple years before the
weight of my changes and tweaks inspired me to finally roll my own. But Ryan's
dotfiles were an easy way to get into bash customization, and then to jump ship
to zsh a bit later. A decent amount of the code in these dotfiles stem or are
inspired from Ryan's original project.
