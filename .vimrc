" No wrap
set nowrap

" Set line numbers
set number

" Setup pathogen
execute pathogen#infect()
syntax on

" Setup file detection
filetype plugin indent on

" Setup theme related stuff
syntax enable
set background=dark
colorscheme solarized

if has('gui-running')
	" Noop
else
	" we are in terminal mode
	set t_Co=16
	let g:solarized_termcolors=16
endif
