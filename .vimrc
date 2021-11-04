set nocompatible              " be iMproved, required
filetype off                  " required execute pathogen#infect() " 

"set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim 


filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Plugins will be downloaded under the specified directory.

set clipboard=unnamed

call plug#begin('~/.vim/plugged')


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'python-mode/python-mode', { 'branch': 'develop' }

Plug 'junegunn/fzf.vim'
Plug 'AndreaOrru/fzf-mopidy-spotify.vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'djoshea/vim-autoread'


Plug 'altercation/vim-colors-solarized'
"Plug 'takac/vim-spotifysearch'

Plug 'matze/vim-tex-fold'

Plug 'lervag/vimtex'



Plug 'yggdroot/indentline'

Plug 'tmhedberg/SimpylFold'

Plug 'rhysd/open-pdf.vim'

Plug 'tpope/vim-fugitive'

Plug 'git://git.wincent.com/command-t.git'



call plug#end()

" Fuzzy file finder
nnoremap <silent> <C-q> :FZF -m<cr>

nnoremap <silent> <C-t> :FZF -m<cr>

:set number
:set mouse =a
"*y   " (yanks into primary clipboard)

" copy and paste to/from vIM and the clipboard
nnoremap <C-c> +y
vnoremap <C-c> +y
nnoremap <C-p> +P
vnoremap <C-p> +P

map qq <C-d>
" access system clipboard
set clipboard=unnamedplus
set laststatus=2




" toggle invisible characters
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces

set ai "Auto indent
set si "Smart indent

:map ff <c+d>
:imap jj <Esc>
set autoread
au CursorHold * checktime  
au FocusLost * :wa
:set conceallevel=0
"let g:auto_save = 1  " enable AutoSave on Vim startup

set ttymouse=xterm2
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>

:set noet ci pi sts=0 sw=4 ts=4
hi! link Folded Normal
"set foldtext=getline(v:lnum)
augroup python
    autocmd!

    " Real men always use real tabs, and I like it four spaces wide.
    autocmd FileType python setlocal ts=4 sts=4 sw=4 noexpandtab
augroup end

"map <F9> :w<CR>:!python %<CR>"
imap <F5> <Esc>:w<CR>:!clear;python %<CR>

:nnoremap <F2> :<C-u> ! python3 %<CR>
"set t_Co=256

"syntax on
"hi Normal ctermbg=none
"
vnoremap <C-n> :norm

syntax enable

:set t_ut=
set background=dark
"solarized options
" let g:solarized_termcolors=256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"colorscheme solarize
colorscheme default



" ~/.vimrc
" Make Vim recognize XTerm escape sequences for Page and Arrow
" keys combined with modifiers such as Shift, Control, and Alt.
" See http://www.reddit.com/r/vim/comments/1a29vk/_/c8tze8p
if &term =~ '^screen'
  " Page keys http://sourceforge.net/p/tmux/tmux-code/ci/master/tree/FAQ
  execute "set t_kP=\e[5;*~"
  execute "set t_kN=\e[6;*~"

  " Arrow keys http://unix.stackexchange.com/a/34723
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif
set t_Co=256
let g:vimtex_view_method = 'zathura'
let g:latex_view_general_viewer = 'zathura'
set backspace=indent,eol,start
