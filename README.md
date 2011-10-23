# General Plugins
## General install

git clone my_repo
ln -s $HOME/.vim/vimrc $HOME/.vimrc

##pathogen
### Install
  https://github.com/tpope/vim-pathogen

##TwitVim
### Install
  http://github.com/vim-scripts/

##fugitive
### Install
  https://github.com/tpope/vim-fugitive

##TaskList
### Install
  https://github.com/vim-scripts/TaskList.vim

##TagList
### Dependency Exuberant CTags
Ctags generates an index (or tag) file of language objects found in source
files that allows these items to be quickly and easily located by a text editor
or other utility. A tag signifies a language object for which an index entry is
available (or, alternatively, the index entry created for that object).
#### Install
http://ctags.sourceforge.net/


### Install
  https://github.com/vim-scripts/taglist.vim
  Follow install instructions:
    http://www.vim.org/scripts/script.php?script_id=273


##Minibufexpl
### Install
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
### Install
cd .vim/bundle
git clone git://github.com/kevinw/pyflakes-vim.git
cd pyflakes-vim
git submodule init
git submodule update

