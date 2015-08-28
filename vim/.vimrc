" This must be first, because it changes other options as a side effect
set nocompatible

" pathogen runntime injection and help indexing
execute pathogen#infect()

" Turn filetype detection, indent scripts and filetype plugins on
filetype plugin indent on

" Create shortcuts for plugins (D:Command, S:Shift, C:Control, M/A:Option/Alt)
map <F1> :NERDTreeToggle<CR>
map <F2> :TagbarToggle<CR>
map <F3> :BufExplorer<CR>
map <F4> :MRU<CR>
map <f5> :SyntasticToggleMode<CR>
map ; :CtrlPMixed<CR>
" Clear search result
nnoremap <CR> :noh<CR><CR>
" Don't use Ex mode, use Q for formatting
map Q gq
" Map keys to simulate Mac keyboard inputs (check input with "sed -n l")
map <ESC>B b
map <ESC>F w
imap <ESC>F <ESC><ESC>F
imap <ESC>B <ESC><ESC>B
nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> :m '<-2<CR>gv=gv
vmap <S-Down> :m '>+1<CR>gv=gv
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("vms")
  set nobackup			" do not keep a backup file, use versions instead
else
  set backup			" keep a backup file (restore to previous version)
  set undofile			" keep an undo file (undo changes after closing)
endif

set history=50			" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch			" do incremental searching
set number			" Set line numbers
set backspace=indent,eol,start
set splitbelow splitright
set clipboard=unnamed
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
set smartindent
set t_Co=256

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Theme Settings
let g:solarized_termcolors=256
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized

" Syntastic Settings
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Status Line Settings
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

let g:airline_powerline_fonts = 1

" set updatetime=4000
" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0
