" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype plugin indent on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		    " do not keep a backup file, use versions instead
else
  set backup		    " keep a backup file
endif

set history=50		    " keep 50 lines of command line history
set ruler		        " show the cursor position all the time
set showcmd		        " display incomplete commands
set incsearch		    " do incremental searching
set number

set fo-=r
set fo-=o
set fo-=O

syntax enable           " enable syntax highlighting (previously syntax on)
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase          " make search case-insensitive
set autoindent
set smartindent


" Don't use Ex mode, use Q for formatting
map Q gq

" format xml
map <F5> :%s/<\([^>]\)*>/\r&\r/g<enter>:g/^\s*$/d<enter>vat=

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
