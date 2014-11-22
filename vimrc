"Check os - needed for minor differences between osx and linux
let os = substitute(system('uname'), "\n", "", "")

"Keep each plugin in its town git submodule
call pathogen#infect()
call pathogen#helptags()

"Set mapleader for extra combinations
let mapleader = ","
let g:mapleader = ","

"Remap ESC to jj
:imap jj <esc>

"Fast saving
nmap <leader>w :w!<cr>

"Fast quit
nmap <leader>q :qa<cr>

"Fast pasting
nmap <leader>p :set paste!<cr>

"Fast closing of all buffers expect current
nmap <leader>o :BufOnly<cr>:MiniBufExplorer<cr>

"Spelling
nmap <silent> <leader>s :setlocal spell!<CR>

"Fast searching with Ag
nmap <leader>a :Ag<cr>

"Open and close NERDTree
map <c-n> :NERDTreeToggle<CR>

"Clipboard
if tolower(os) == "darwin"
  "Fast copying to clipboard in visual mode
  vmap <leader>c "*y

  "Fast cutting to clipboard in visual mode
  vmap <leader>x "*x

  "Fast open file with standard program
  nmap <leader>O :!open %:p<cr><cr>

elseif tolower(os) == "linux"
  set clipboard=unnamed
  set clipboard=unnamedplus
endif

"Fast creating a visual code snippet and open in browser
vmap <leader>S :TOhtml<cr> :w! /tmp/1.html<cr> :!open /tmp/1.html<cr> :q!<cr>

"Fast switching between buffers
map { :bp<cr>
map } :bn<cr>

"Quickly open ctrlp
map <leader>f :CtrlP<cr>

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

""
" Ruby settings
""
autocmd FileType ruby set number
autocmd FileType ruby runtime macros/matchit.vim
au! BufRead,BufNewFile *.haml,*.hamlc setfiletype haml
"Treat .rabl files as .rb files
au BufRead,BufNewFile *.rabl setf ruby

"Slime config (screen unfortunately is slow, tmux is fast)
let g:slime_target = "tmux"

" RSpec.vim mappings
map <Leader>R :w<CR> :call RunCurrentSpecFile()<CR>
map <Leader>r :w<CR> :call RunNearestSpec()<CR>
let g:rspec_command = "!zeus rspec {spec}"

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
"When there is a previous search pattern, highlight all its matches
set hlsearch

"Shows all occurences of the underlying word
nnoremap * :set hls<CR>:exec "let @/='\\<".expand("<cword>")."\\>'"<CR>

"Remove all highlighting
nnoremap & :nohls<CR>

"Show tasklist buffer
map T :TaskList<CR>

"Exuberant Ctags; needed for Taglist
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" MiniBufExpl Colors
hi MBEVisibleActive guifg=#A6DB29 guibg=fg
hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
hi MBEVisibleChanged guifg=#F1266F guibg=fg
hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
hi MBEChanged guifg=#CD5907 guibg=fg
hi MBENormal guifg=#808080 guibg=fg

let g:miniBufExplUseSingleClick = 1


"Recognize filetype on the fly
filetype on
filetype plugin on

"Colorschemes
"wombat,zenburn,blackboard
let g:airline_theme = "zenburn"

if has('gui_running')
  "colorscheme solarized
  "set background=dark
  colorscheme Tomorrow-Night
else
  colorscheme wombat256
end

""
" Misc
""
"Turn backup and swap off, but it's a good idea when vim is run over the
"network without screen session.
set nobackup
set nowritebackup
"set noswapfile
set backupdir=/tmp

"Enable mouse usage
set mouse=a

syntax on

"cmd completion enhanced mode
set wildmenu

"Detect filetype, load optional filetype plugins, load optional indent rule file
filetype plugin indent on

" Set terminal window title
set title

"Highlight when about to linebreak and when over max textwidth
if has("colorcolumn")
  set cc=+1
end
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


" Wiki like behaviour - opens the word under the cursor as new buffer.
" If this file doesn't exist yet, create it.
:map gf :e <cfile>.otl<CR>

" TwitVIM configuration
if filereadable("~/vim_setup/twitter_account.vim")
:so ~/vim_setup/twitter_account.vim
  let twitvim_api_root = "https://api.twitter.com/1"
  nmap <leader>tp :BPosttoTwitter<cr>
  nmap <leader>tf :FriendsTwitter<cr>
  nmap <leader>tr :RepliesTwitter<cr>
  nmap <leader>td :DMTwitter<cr>
endif

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

"Set font according to system
if os == "darwin"
  set guifont=Menlo:h12
  " https://blogs.adobe.com/typblography/2012/09/source-code-pro.html
  "set guifont=Source\ Code\ Pro:h13
elseif os == "Linux"
  set guifont=Mensch\ 10
  "set guifont=Anonymous\ Pro\ 12
  "set guifont=Deja\ Vu\ Sans\ Mono\ 10
  "set guifont=Inconsolata\ 12
endif

"Don't quote signatures in mutt
au BufRead /tmp/mutt* normal :g/^> -- $/,/^$/-1d^M/^$^M^L

" Enable syntastic syntax checking for supported languages
"Enable syntastic syntax checking for supported languages
"red highlight on error
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

"If doing a diff. Upon writing changes to file, automatically update the
"differences
autocmd BufWritePost * if &diff == 1 | diffupdate | endif

"Fugitive configuration
"disable mbe, because it confuses Gdiff, then get the status window and diff
nmap <leader>gd :CMiniBufExplorer <cr> :Gstatus <cr><C-w><C-w> :Gdiff <cr>

"OPTIONAL configuration

"Show taglist buffer (classes, methods)
"map P :TlistToggle<CR>

"Always show statusline
:set laststatus=2

"tpope's statusline
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c\ %)%P


"Text bubbling like in Textmate
"http://vimcasts.org/episodes/bubbling-text/
"bubble single lines
nmap <C-k> ddkP
nmap <C-j> ddp
"bubble multiple lines
vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]

"Do not show startup message
set shortmess+=I

"Do not skip lines when 'wrap' is set
nnoremap j gj
nnoremap k gk

set encoding=utf-8
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

"Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"Shortcut for scripting calculations
"Type 8*8<C-A> results in 8*8=64
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>

"Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=500
set undoreload=5000

"Format JSON
map <leader>json <Esc>:%!python -m json.tool<CR>

"When working with p_slides, there is primarily markdown inline in a script tag
au! BufRead,BufNewFile *html,*htm call TestForPSlides()
"Check whether it is a p_slides presentation
function TestForPSlides()
  if match(join(getline(1,'$')), 'p_slides') > 0
    set filetype=markdown
  endif
endfunction
