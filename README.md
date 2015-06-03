# General Plugins
## General install

    mv $HOME/.vim{,_bak}
    git clone git://github.com/munen/vim_setup.git $HOME/.vim

Create symlinks:

    ln -s $HOME/.vim/vimrc $HOME/.vimrc

Switch to _$HOME/.vim_ directory and fetch submodules:

    cd $HOME/.vim
    git submodule init
    git submodule update

## Update

    cd $HOME/.vim
    git pull origin master
    git submodule init
    git submodule update

## Upgrade
If you want to upgrade all plugins, pull master for each bundle:

    git submodule foreach git pull origin master

## Adding a new plugin

    cd $HOME/.vim
    git submodule add -f $PATH_TO_GIT_REPO ./bundle/$LOCAL_NAME
    git add -f .gitmodules bundle
    # update README.md
    git commit -am"your message"

##pathogen
https://github.com/tpope/vim-pathogen

Manage your 'runtimepath' with ease. In practical terms, pathogen.vim makes it
super easy to install plugins and runtime files in their own private
directories.

##The Silver Searcher
git@github.com:rking/ag.vim.git

This plugin is a front for (ag)[https://github.com/ggreer/the_silver_searcher],
A.K.A. the_silver_searcher. Ag can be used as a replacement for 153% of the
uses of ack. This plugin will allow you to run ag from vim, and shows the
results in a split window.

##EasyGrep
https://github.com/vim-scripts/EasyGrep

EasyGrep makes using vimgrep easier.  When using EasyGrep, searching for a word
is as easy as typing <leader>vv (v v, not double-u) over the word for which you
want to search.  This search can also be accomplished with the :Grep command.</leader>

Searching and replacing (recursively) in arbitrary folder structures is easy,
as well.

##VimRepress
https://github.com/vim-scripts/VimRepress

VimRepress is a plugin for managing wordpress blog from Vim.

##TwitVim
https://github.com/vim-scripts/TwitVim

Allows you to post to Twitter and view Twitter timelines.

##fugitive
https://github.com/tpope/vim-fugitive

I'm not going to lie to you; fugitive.vim may very well be the best Git wrapper
of all time.

##TaskList
https://github.com/vim-scripts/TaskList.vim

This script is based on the eclipse Task List. It will search the file for
FIXME, TODO, and XXX (or a custom list) and put them in a handy list for you to
browse which at the same time will update the location in the document so you
can see exactly where the tag is located.

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

##coffee-script
https://github.com/kchmck/vim-coffee-script

Adds CoffeeScript supporr. It handles syntax, indenting, and compiling. Also
included is an eco syntax and support for CoffeeScript in Haml and HTML.


##gist-vim
https://github.com/mattn/gist-vim

This is a vimscript for creating and managing private and public gists (http://gist.github.com).

## Pastie
https://github.com/tpope/vim-pastie

Create new snippets for http://pastie.org/
This might be considered redundant to the Gist function of gist-vim


##TagList
https://github.com/vim-scripts/taglist.vim


The "Tag List" plugin is a source code browser plugin for Vim and
provides an overview of the structure of source code files and allows
you to efficiently browse through source code files for different
programming languages.

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

It presents the file system to you in the form of a tree which you
manipulate with the keyboard and/or mouse. It also allows you to perform
simple file system operations.

##Minibufexpl
https://github.com/fholgado/minibufexpl.vim

List your open buffers as tabs along the top or bottom of your screen.

##HTML Escape

This code allows you to escape your HTML entities with one shortcut key: Change
(<, >, &) to (&lt;, &gt;, &amp;), or the reverse.

##HTML AutoCloseTag
https://github.com/vim-scripts/HTML-AutoCloseTag

Automatically closes HTML tag once you finish typing it with >. It is also
smart enough to not autoclose tags when in a comment, when they are
self-closing, or when they have already been closed.

##Webapi
https://github.com/mattn/webapi-vim

Vim Interface to Web API

* XML parser Library
* HTML parser Library
* JSON parser Library
* HTTP client

and some utility functions.

## ctrlp
https://github.com/kien/ctrlp.vim

Fuzzy file finder. A lot like the well known CMD-T, but written in pure
vimscript, so there's no need for C extensions, ruby support, et al.

# Color schemes
## Solarized (bright and dark, high contrast)
* Bright mode good for presentations

Solarized is a sixteen color palette (eight monotones, eight accent colors)
designed for use with terminal and gui applications.

http://ethanschoonover.com/solarized

https://github.com/altercation/vim-colors-solarized
## Blackboard (dark, high contrast)
https://github.com/nelstrom/vim-blackboard

A port of the Blackboard theme from TextMate to Vim.
## Wombat (dark, high contrast)
https://github.com/cschlueter/vim-wombat

## Zenburn (dark, low contrast)
https://github.com/vim-scripts/Zenburn

This colour scheme is intended to be pleasant for the eyes when working in
low-light conditions. The low contrast will reduce eyestrain.

## Tomorrow (dark, light, medium contrast)
https://github.com/chriskempson/tomorrow-theme/tree/master/vim

After having spent over five years using, tweaking and refining a personal
editor theme I decided it was time to release "Tomorrow Theme" - a bright theme
with pastel colours and sensible syntax highlighting.

A theme should not get in your way but should aid your programming with easily
identifiable colours that add meaning and enhance legibility. This was the main
focus when developing Tomorrow.

## Railscasts
https://github.com/jpo/vim-railscasts-theme

A GUI only color scheme based on the RailsCasts TextMate theme.


# Syntax
##Syntastic
https://github.com/scrooloose/syntastic

Syntastic is a syntax checking plugin that runs buffers through external syntax
checkers as they are saved and opened. If syntax errors are detected, the user
is notified and is happy because they didn't have to compile their code or
execute their script to find them.

##Javascript
https://github.com/pangloss/vim-javascript

JavaScript bundle for vim, this bundle provides syntax and indent plugins.

##Markdown
https://github.com/tpope/vim-markdown

Add markdown syntax highlighting.


##JSON
https://github.com/leshill/vim-json

Add JSON syntax highlighting.

##Align
https://github.com/tsaleh/vim-align

Align text on arbitray symbols, i.e. '='.

Example:

    foo = 1
    foobar = 2

Select in visual mode, then:

    :Align =

You get:

    foo    = 1
    foobar = 2

##FindYamlKey
https://github.com/munen/find_yaml_key

Plugin to search nested keys in a YAML document.

##BufOnly
https://github.com/duff/vim-bufonly

:BufOnly without an argument will unload all buffers but the current one.

##Airline
https://github.com/bling/vim-airline

Lean & mean status/tabline.

# Ruby
## Rails
https://github.com/tpope/vim-rails

Remember when everybody and their mother was using TextMate for Ruby on Rails
development? Well if it wasn't for rails.vim, we'd still be in that era.

## Rspec
https://github.com/thoughtbot/vim-rspec

This is a lightweight RSpec runner for Vim and MacVim.

## Slime
https://github.com/jpalardy/vim-slime

Grab some text and "send" it to a GNU Screen / tmux / whimrepl session.

## RubyBlock
https://github.com/nelstrom/vim-textobj-rubyblock

When textobj-rubyblock is installed you will gain two new text objects, which
are triggered by ar and ir respectively. These follow Vim convention, so that
ar selects all of a ruby block, and ir selects the inner portion of a
rubyblock.

## Endwise
https://github.com/tpope/vim-endwise

This is a simple plugin that helps to end certain structures automatically. In
Ruby, this means adding end after if, do, def and several other keywords. In
Vimscript, this amounts to appropriately adding endfunction, endif, etc.

# Clojure
## Fireplace
https://github.com/tpope/vim-fireplace

There's a REPL in fireplace, but you probably wouldn't have noticed if I hadn't
told you. Such is the way with fireplace.vim. By the way, this plugin is for
Clojure.

## Leiningen
https://github.com/tpope/vim-leiningen

Static support for Leiningen

## Clojure Static
https://github.com/guns/vim-clojure-static#syntax-options

Syntax Highlighting for Clojure and ClojureScript. Indentation. And insert mode
complection through <C-X><C-O> and <C-X><C-U>.

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
Linux font (with appropriately weightily Linux name) “DejaVu Sans Serif Mono”,
which is itself an updated form of Bitstream Vera Sans Mono.

