syntax on "enables syntax highlighting

if has ('filetype')
    filetype indent plugin on "sets filetype detection for indents and plugins to on
endif

autocmd Vimenter * NERDTree "starts vim with nerdtree open

call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify' "adds vim start menu
Plug 'vim-syntastic/syntastic' "adds vim syntax highlighting
Plug 'preservim/nerdtree' "adds NERDTree file viewer
Plug 'vim-airline/vim-airline' "adds the airline bar at bottom
Plug 'vim-airline/vim-airline-themes' "adds themes to airline bar
Plug 'frazrepo/vim-rainbow' "adds rainbow brackets
Plug 'preservim/nerdcommenter' "adds ability to comment out sections with leader-cc
Plug 'sjl/badwolf' "badwolf colorscheme
Plug 'tabnine/YouCompleteMe' "tabnine autocompletion
Plug 'chiel92/vim-autoformat' "formats on save
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "fuzzy finder
Plug 'junegunn/fzf.vim' "fuzzy finder
Plug 'voldikss/vim-floaterm' "adds floating terminal
Plug 'itchyny/vim-cursorword' "underlines the current word the cursor is under
Plug 'tpope/vim-fugitive' "git integration in vim
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tc50cal/vim-taglist' "will show function tags in a seperate window
call plug#end()

au BufWrite * :Autoformat<CR> "autoformats on any save

let g:rainbow_active=1
let g:badwolf_tabline=0
let g:indet_guides_enable_on_vim_startup=1
let g:python3_host_prog="/bin/python3" "python3 path
let g:python2_host_prog="/bin/python2" "python2 path
let g:NERDCreateDefaultMappings=1
let g:floaterm_keymap_new='<leader>ft'
let g:floaterm_keymap_toggle='<leader>t'

set encoding=utf-8 "sets encoding to standard utf-8
set termencoding=utf-8 "sets encoding to standard utf-8
set fileencoding=utf-8 "sets encoding to standard utf-8
set fileformat=unix "sets fileformatting to Unix
set spell "sets spell check to on

set noerrorbells "removes the loud error bell
set visualbell "adds a flash instead of an audible bell

set number "adds numbers on side
set cursorline "adds visible line under cursor
set cursorcolumn "adds visible vertical line on cursor
set wrap "lets text wrap at limit
set textwidth=80 "sets text limit to 80 characters
set linebreak "wont wrap text in middle of a word
set ruler "shows cursor position in airline
set scrolloff=10 "shows + or - 10 lines while scrolling

set nocompatible "removes comapatibility with old Unix systems?
set noswapfile "do not create a swap file
set nobackup "do not create a backup file

set hidden "allows terminals and windows to not be shown without closing them
set cmdheight=3 "sets command bar height to 3 to make it bigger
set lazyredraw
set wildmenu

set autoindent "sets indent to auto
set smartindent "sets indent to detect filetype
set tabstop=4 "sets tab to make 4 spaces
set shiftwidth=4
set expandtab "tabs treated like single backspace

set hlsearch "highlights searches
set incsearch "sets incremental search
set ignorecase "ignores case sensitivity while searching

set showmatch "shows matching pairs

set splitbelow "puts splits below
set splitright "puts splits to the right

set t_Co=256 "use all terminal colors if availible
set background=dark "sets background to dark

"<leader> = \

inoremap jj <esc>
"use jj to leave insert mode
inoremap <C-s> <esc>:w<CR>i
"use ctrl-s to save in insert mode and return to insert mode

nnoremap <leader>n :tabnew<CR>
"use \n for new tab in vim
nnoremap <leader>b :tabNext<CR>
"use \b to move to next tab
nnoremap <leader>f :tabfirst<CR>
"use \f to move to first tab
nnoremap <leader>l :tablast<CR>
"use \l to move to last tab
nnoremap <C-s> :w<CR>
"use ctrl-s to save in normal mode
nnoremap <C-q> :wq<CR>
"use ctrl-q to save and quit
nnoremap <C-t> :NERDTreeToggle<CR>
"use ctrl-t to toggle NERDTree

colorscheme badwolf "using badwolf colorscheme

echo "VIMRC had loaded"