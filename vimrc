"Keep each plugin in its own git submodule
call pathogen#infect()
call pathogen#helptags()

"Set mapleader for extra combinations
let mapleader = ","
let g:mapleader = ","

"Fast saving
nmap <leader>w :w!<cr>

"Fast quit
nmap <leader>q :q<cr>

"Spelling
nmap <silent> <leader>s :set spell!<CR>


""
" Python settings
""
"Python PEP8 style-guide
set expandtab
set textwidth=79
set tabstop=8
"For non-python files, set tabs to two spaces
set softtabstop=2
set shiftwidth=2
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
"Copy indent from current line when starting a new line
set autoindent

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set number

"PyFlakes settings
if has("gui_running")
  highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

""
" Ruby settings
""
autocmd FileType ruby set number

"Line/Column information
set ruler

"GUI options
if has("gui_running")
  "Don't show toolbar
  set guioptions-=T
  "Vertical fullscreen
  set lines=999 columns=100
endif

"Search
set incsearch "Incremental search
set ignorecase
"Override 'ignorecase' if search pattern contains upper case characters
set smartcase

"Shows all occurences of the underlying word
nnoremap * :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>

"Remove all highlighting
nnoremap & :nohls<CR>

"Show tasklist buffer
map T :TaskList<CR>

"Show taglist buffer (classes, methods)
map P :TlistToggle<CR>
"Exuberant Ctags; needed for Taglist
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" MiniBufExpl Colors
hi MBEVisibleActive guifg=#A6DB29 guibg=fg
hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
hi MBEVisibleChanged guifg=#F1266F guibg=fg
hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
hi MBEChanged guifg=#CD5907 guibg=fg
hi MBENormal guifg=#808080 guibg=fg

"Recognize filetype on the fly
filetype on
filetype plugin on

"Colorschemes
"wombat,zenburn,blackboard
colorscheme solarized
set background=dark

""
" Misc
""
"Turn backup and swap off, but it's a good idea when vim is run over the
"network without screen session.
set nobackup
set nowritebackup
set noswapfile
"set backupdir=/tmp

"Enable mouse usage
set mouse=a
syntax on
"cmd completion enhanced mode
set wildmenu
"Persistent undo
set undofile
set undodir=/tmp


"Detect filetype, load optional filetype plugins, load optional indent rule file
filetype plugin indent on

" Set terminal window title
set title

"Highlight when about to linebreak and when over max textwidth
set cc=+1
noremap <silent> L
      \ :if exists('w:long_line_match1') <Bar>
      \   silent! call matchdelete(w:long_line_match1) <Bar>
      \   silent! call matchdelete(w:long_line_match2) <Bar>
      \   unlet w:long_line_match1 <Bar>
      \   unlet w:long_line_match2 <Bar>
      \ elseif &textwidth > 0 <Bar>
      \   let w:long_line_match1 =  matchadd('MatchParen', printf('\%%<%dv.\%%>%dv', &textwidth+1, &textwidth-8), -1)<Bar>
      \   let w:long_line_match2 =  matchadd('ErrorMsg', printf('\%%>%dv.\+', &textwidth), -1)<Bar>
      \ endif<CR>


" Bicycle Repair Man
" show tracebacks on exceptions
let g:bike_exceptions = 1

" Wiki like behaviour - opens the word under the cursor as new buffer.
" If this file doesn't exist yet, create it.
:map gf :e <cfile>.otl<CR>

" Recognize markdown files
au BufNewFile,BufRead *.md set filetype=mkd

" TwitVIM configuration
let twitvim_login = "preek:HtUJ3SYulV8QPbPb"
let twitvim_api_root = "https://api.twitter.com/1"
nmap <leader>tp :BPosttoTwitter<cr>
nmap <leader>tf :FriendsTwitter<cr>
nmap <leader>tr :RepliesTwitter<cr>
nmap <leader>td :DMTwitter<cr>

"Delete trailing white space
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

"Show cope (current list of errors)
nmap <leader>c :cope<cr>
"Don't show cope (current list of errors)
nmap <leader>C :ccl<cr>
