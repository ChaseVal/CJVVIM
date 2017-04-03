
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

runtime! ftplugin/man.vim
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set path+=**	"for fuzzy search of sub files
set wildmenu
set rnu "Relative line numbers"
autocmd BufNewFile  *.cpp	0r ~/.vim/templates/skeleton.cpp
autocmd BufNewFile  *.c		0r ~/.vim/templates/skeleton.c
autocmd BufNewFile  *.h		0r ~/.vim/templates/skeleton.h
autocmd BufNewFile  *.make	0r ~/.vim/templates/skeleton.make
"
call vundle#begin()

"Plugin 'flazz/vim-colorschemes'
"Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required

let g:solarized_termcolors=256
colorscheme solarized

"filetype plugin indent on

nnoremap ,cpp :-1read $HOME/.vim/templates/skeleton.cpp<CR>:set filetype=cpp<CR>
nnoremap ,chh :-1read $HOME/.vim/templates/skeleton.h<CR>:set filetype=cpp<CR>
"gnuplot snippet. cpp common code.

"let g:netrw_banner=0
"let g:netrw_browse_split=4
"let g:netrw_altv=1
"let g:netrw_liststyle=3
"let g:netrw_list_hide=netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
"
