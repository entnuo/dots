" by Netuno/Entnuo
" これは痛かったよ。。。
" - - - GENERAL

set nocompatible            " disable compatibility to vi
set tabstop=4               " how many spaces tab uses
set softtabstop=4           " same as above but while editing
set shiftwidth=4            " spaces autoindent use
set autoindent              " take indent for new line from previous line
set expandtab               " use spaces when tab is inserted
set number                  " add line number
set relativenumber          " relative number for each line
set numberwidth=4           " columns used for line number
set signcolumn=number       " when to show signcolumn
set noswapfile              " do not use a swapfile
set nobackup                " do not keep a backup file after overwriting a file
set nowritebackup           " do not make a backup before overwriting a file
set wildmenu                " menu for command line completion
set wildmode=full           " 
set wildignorecase          " ignore case when completing file names
set incsearch               " incrimental search
set hlsearch                " highlight search
set ignorecase              " case insensitive
set smartcase               " switch to case sensitive if there is a uppercase letter
set wrap                    " (maybe ill change later)
set splitbelow              " new window from split is bellow the current one
set splitright              " new window from split is put right of the current one
set hidden                  " navigate buffers without losing unsaved work
set mouse=v                 " middle-click to paste
set mouse=a                 " enable mouse click. mouse=v needs to go first in order to mouse=a to be enabled
set encoding=UTF-8          " well... encoding
set cursorline              " highlibe cursor line
set termguicolors           " enables 24-bit colours
set hls is ic number        " can't remember what is this or why it's here
set clipboard+=unnamedplus  " system clipboard
au BufRead,BufNewFile *.fountain set filetype=fountain
filetype on
filetype indent on
filetype plugin on


" - - - PLUGINS

" Automatic installation

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim' | Plug 'junegunn/limelight.vim'
"Plug 'ctrlpvim/ctrlp.vim' | Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'vim-scripts/fountain.vim' | Plug 'tpope/vim-markdown' | 
Plug 'ap/vim-css-color'
Plug 'Pocco81/HighStr.nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'tanvirtin/monokai.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
call plug#end()


" - - - STATUSLINE

set laststatus=2
set statusline=
set statusline+=%{StatuslineMode()}
set statusline+=\ 
set statusline+=\|
set statusline+=\ 
set statusline+=%f    " path
set statusline+=\ 
set statusline+=%r    " readonly flag
set statusline+=\ 
set statusline+=%m    " modified flag
" right side
set statusline+=%=
set statusline+=[
set statusline+=%P    " percentage
set statusline+=]
set statusline+=\ 
set statusline+=[
set statusline+=%{strlen(&fenc)?&fenc:'none'}    " encoding
set statusline+=]
set statusline+=\ 
set statusline+=%y    " type of file

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction


" - - - KEYBINDINGS

let mapleader=" "
map <C-g> :Goyo<CR>
"nnoremap <leader><Space> :CtrlP<CR>
"nnoremap <leader>n :Lex!<CR>
"nnoremap <leader>z :set invrnu invnu<CR>
"nnoremap <leader><C-l> :set nofoldenable<CR>
nnoremap <C-l> :set foldmethod=indent<CR>
nnoremap <C-k> :set foldmethod=syntax<CR>
"nnoremap Q <nop>
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
"nnoremap <Up>    :resize -2<CR>
"nnoremap <Down>  :resize +2<CR>
"nnoremap <Left>  :vertical resize +2<CR>
"nnoremap <Right> :vertical resize -2<CR>
nnoremap <C-n> :NERDTreeToggle<CR>


" - - - COLOURS

colorscheme tokyonight 

set background=dark
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = '#777777'
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE


" - - - GOYO

function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  hi! Normal ctermbg=NONE guibg=NONE 
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


" - - - DISABLE ARROW KEYS (TRAINING)

noremap <up> :echoerr "use k instead"<CR>
noremap <down> :echoerr "use j instead"<CR>
noremap <left> :echoerr "use h instead"<CR>
noremap <right> :echoerr "use l instead"<CR>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>
