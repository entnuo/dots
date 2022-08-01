let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/goyo.vim' | Plug 'junegunn/limelight.vim'
"Plug 'ctrlpvim/ctrlp.vim' | Plug 'neoclide/coc.nvim', {'branch': 'release'} 
Plug 'vim-scripts/fountain.vim' | Plug 'tpope/vim-markdown' | 
Plug 'ap/vim-css-color'
Plug 'Pocco81/HighStr.nvim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'tanvirtin/monokai.nvim'
Plug 'jiangmiao/auto-pairs'
call plug#end()

"General Settings
set encoding=UTF-8 nobackup nocompatible nowritebackup incsearch hlsearch smartcase cursorline splitbelow splitright wildmode=longest,list,full
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab
"set fillchars+=eob:\ 
filetype on
filetype plugin on
syntax on
set mouse=a
set hls is ic number
set clipboard+=unnamedplus
au BufRead,BufNewFile *.fountain set filetype=fountain

"Status Line
"set statusline+=\ %y
"set statusline+=%#PmenuSel#
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c

set laststatus=2
set statusline=
set statusline+=%y
set statusline+=\ 
set statusline+=%F
set statusline+=\ 
set statusline+=%m
set statusline+=\ 
set statusline+=%r
set statusline+=%=
set statusline+=[%{&ff}
set statusline+=\ 
set statusline+=%{strlen(&fenc)?&fenc:'none'}]
set statusline+=\ 
set statusline+=%p%%
set statusline+=\ 
set statusline+=%l
set statusline+=:
set statusline+=%c

"Key-bindings
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

"Color Settings

colorscheme tokyonight 

set background=dark
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = '#777777'
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

"Goyo Settings
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
