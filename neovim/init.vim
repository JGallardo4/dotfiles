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
set mouse=c

" Change movement keys to make more sense in Colemak layout.
noremap h k
noremap j h
noremap k j

" Enable auto-complete for html
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Easier access to autocomplete
:imap <C-Space> <C-X><C-O>
