# General Plugins
## General install

    git clone my_repo

Create symlinks:

    ln -s $HOME/.vim/vimrc $HOME/.vimrc

Switch to _$HOME/.vim_ directory and fetch submodules:

    cd $HOME/.vim
    git submodule init
    git submodule update

For pyflakes, look at the pyflakes section of this readme.

##pathogen
https://github.com/tpope/vim-pathogen

##TwitVim
https://github.com/vim-scripts/TwitVim

##fugitive
https://github.com/tpope/vim-fugitive

##TaskList
https://github.com/vim-scripts/TaskList.vim

##Vimoutliner
https://github.com/vimoutliner/vimoutliner

VimOutliner is an outline processor with many of the same features
as Grandview, More, Thinktank, Ecco, etc. Features include tree
expand/collapse, tree promotion/demotion, level sensitive colors,
interoutline linking, and body text.

What sets VimOutliner apart from the rest is that it's been constructed
from the ground up for fast and easy authoring.  Keystrokes are quick and
easy, especially for someone knowing the Vim editor. VimOutliner can be
used without the mouse (but is supported to the extent that Vim supports
the mouse).

##file-line
https://github.com/vim-scripts/file-line

Allow files to be opened on a specific line with the following syntax:

    path_to_file:NN

where NN is the desired line number.

##gist-vim
https://github.com/mattn/gist-vim

This is a vimscript for creating gists (http://gist.github.com).

##TagList
https://github.com/vim-scripts/taglist.vim

### Install
Follow install instructions: http://www.vim.org/scripts/script.php?script_id=273

### Dependency Exuberant CTags
Ctags generates an index (or tag) file of language objects found in source
files that allows these items to be quickly and easily located by a text editor
or other utility. A tag signifies a language object for which an index entry is
available (or, alternatively, the index entry created for that object).
#### Install
http://ctags.sourceforge.net/

##NERDTree
https://github.com/scrooloose/nerdtree

It presents the filesystem to you in the form of a tree which you
manipulate with the keyboard and/or mouse. It also allows you to perform
simple filesystem operations.

##Minibufexpl
https://github.com/fholgado/minibufexpl.vim

# Color schemes
## Solarized (bright and dark, high contrast)
Bright mode good for presentations

http://ethanschoonover.com/solarized

https://github.com/altercation/vim-colors-solarized
## Blackboard (dark, high contrast)
https://github.com/nelstrom/vim-blackboard
## Wombat (dark, high contrast)
https://github.com/cschlueter/vim-wombat
## Zenburn (dark, low contrast)
https://github.com/vim-scripts/Zenburn

# Syntax
##Syntastic
https://github.com/scrooloose/syntastic

On the fly syntax checking

##Markdown
https://github.com/tpope/vim-markdown

# Ruby
## Rails
https://github.com/tpope/vim-rails

Remember when everybody and their mother was using TextMate for Ruby on Rails
development? Well if it wasn't for rails.vim, we'd still be in that era.

## RubyBlock
https://github.com/nelstrom/vim-textobj-rubyblock

When textobj-rubyblock is installed you will gain two new text objects, which
are triggered by ar and ir respectively. These follow Vim convention, so that
ar selects all of a ruby block, and ir selects the inner portion of a
rubyblock.


# Python
## Bicycle Repair Man
### Install:
http://sourceforge.net/projects/bicyclerepair/

 * Download and unpack tar
 * cd bicyclerepair-0.9; python setup.py install
 * mkdir -p .vim/ftplugin/python; cp bicyclerepair-0.9/ide-integration/bike.vim * $HOME/.vim/ftplugin/python
  * Only load this plugin for filetype 'python'

## Pyflakes
PyFlakes catches common Python errors like mistyping a variable name or
accessing a local before it is bound, and also gives warnings for things like
unused imports.

http://github.com/kevinw/pyflakes-vim

### Install

      cd .vim/bundle
      git clone git://github.com/kevinw/pyflakes-vim.git
      cd pyflakes-vim
      git submodule init
      git submodule update

# Fonts
## Inconsolata
http://www.levien.com/type/myfonts/inconsolata.html

It is a monospace font, designed for code listings and the like, in print.
There are a great many "programmer fonts," designed primarily for use on the
screen, but in most cases do not have the attention to detail for high
resolution rendering.
## Deja Vu Sans Mono
http://sourceforge.net/projects/dejavu/

This font comes preinstalled in Ubuntu.
## Anonymous Pro
http://www.ms-studio.com/FontSales/anonymouspro.html

Anonymous Pro (2009) is a family of four fixed-width fonts designed especially
with coding in mind. Characters that could be mistaken for one another (O, 0,
I, l, 1, etc.) have distinct shapes to make them easier to tell apart in the
context of source code.

## Mensch
http://robey.lag.net/2010/06/21/mensch-font.html

The latest MacOS release (10.6, or “Snow Leopard”) comes with a new monospace
font. It’s called “Menlo” and it’s a slightly modified form of the standard
Linux font (with appropriately weightly Linux name) “DejaVu Sans Serif Mono”,
which is itself an updated form of Bitstream Vera Sans Mono.
