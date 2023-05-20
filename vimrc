set nocompatible 

" Pathogen
execute pathogen#infect()
call pathogen#helptags()  " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on

" gofmt
let g:go_fmt_command = "goimports"

" NeoComplete
let g:neocomplete#enable_at_startup = 1

source ~/.vimrcs/vimrc
source ~/.vimrcs/vimgo
