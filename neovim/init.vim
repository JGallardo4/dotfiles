" Juan's

"           ██                           
"          ░░                            
"  ██    ██ ██ ██████████  ██████  █████ 
" ░██   ░██░██░░██░░██░░██░░██░░█ ██░░░██
" ░░██ ░██ ░██ ░██ ░██ ░██ ░██ ░ ░██  ░░ 
"  ░░████  ░██ ░██ ░██ ░██ ░██   ░██   ██
"   ░░██   ░██ ███ ░██ ░██░███   ░░█████ 
"    ░░    ░░ ░░░  ░░  ░░ ░░░     ░░░░░ 

" Set colorscheme
colorscheme Tomorrow-Night-Eighties

" Show line numbers
set number

" Enable syntax highlighting.
syntax on

" Enable mouse support.
set mouse=a

" Use system clipboard
set clipboard+=unnamedplus

" Change movement keys to make more sense in Colemak layout.
noremap h k
noremap j h
noremap k j

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Enable auto-complete for html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Easier access to autocomplete
imap <C-Space> <C-X><C-O>

" Tab inserts 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Vim Plug "
" Specify a directory for plugins
call plug#begin('~/.dotfiles/nvim/plugins/')

" Vim Surround
Plug 'tpope/vim-surround'

" C#
Plug 'OrangeT/vim-csharp'

" Initialize plugin system
call plug#end()
