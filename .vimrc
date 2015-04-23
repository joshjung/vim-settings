syntax enable
set nowrap
set number
set smartindent
set autoindent
set showmatch
set splitbelow
set splitright

set ts=4
set tabstop=4
set shiftwidth=4
set expandtab

set backup
set backupdir=~/.vim/backup,/tmp

set undodir=~/.vim/undodir
set undofile

nmap <F2> :NERDTreeToggle<CR>
nnoremap <F5> :exe "mksession! " . v:this_session<CR>

set nocompatible
set encoding=utf-8

" Setup pathogen
execute pathogen#infect()

" Setup file detection
filetype plugin indent on

" Setup theme related stuff
set background=dark
colorscheme solarized

if has('gui-running')
	" Noop
else
	" we are in terminal mode
	set t_Co=16
	let g:solarized_termcolors=16
endif

let NERDTreeShowHidden=1
set autochdir
