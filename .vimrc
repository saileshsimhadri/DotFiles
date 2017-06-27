"For Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Add plugins here

"let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"Vim Surround Plugin
Plugin 'tpope/vim-surround'

"Syntastic plugin
Plugin 'vim-syntastic/syntastic'

"NerdTree plugin
Plugin 'scrooloose/nerdtree'

"Config file highlighting
Plugin 'PotatoesMaster/i3-vim-syntax'

"Fugitive plugin
Plugin 'tpope/vim-fugitive'

"Vim-Airline
Plugin 'bling/vim-airline'

"Codi
Plugin 'metakirby5/codi.vim'

call vundle#end()
filetype plugin indent on

"Leader is ,
let mapleader = ","

"Rest of vimrc

"Remap ,ne for nerdtree
nmap <leader>ne :NERDTree<cr>

"Remap ,e for syntastic
nmap <leader>e :Error<cr>

"Automatically change working directory to current file
set autochdir

"Remap jk and kj to escape
inoremap jk <Esc>
inoremap kj <Esc>

"Remove autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

syntax enable 		" enable syntax processing

set tabstop=4 		" number of visual spaces per TAB
set softtabstop=4 	" number of spaces in tab when editing
set shiftwidth=4    " indent correspond to one tab
set expandtab		" tabs are spaces

set number          " show line numbers
set showcmd         " show command in bottom bar

set cursorline      " highlight current line

set wildmenu        " visual autocomplete for command menu

set showmatch       " highlight matching [{()}]

set incsearch       " search as characters are entered
set hlsearch        " highlight matches
" turn off search highlighting with ,<space>
nnoremap <leader><space> :nohlsearch<CR>

set foldenable      " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10  " 10 nested fold max
nnoremap <space> za " space open/closes folds
set foldmethod=indent " fold based on indent level

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"move to beginning/end of line
nnoremap B ^
nnoremap E $


colorscheme brogrammer

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set t_Co=256

hi NonText guibg=NONE ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
hi cursorline guibg=NONE ctermbg=NONE
hi number guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

    " airline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''

set laststatus=2
