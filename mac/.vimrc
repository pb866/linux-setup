" Configuration

" Vundle first for installed bundles
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'SimpylFold'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
" Put your non-Plugin stuff after this line wrap cursor/delete around lines

" ale linter settings
"set statusline+=%#warningmsg#
"set statusline+=%{ALEGetStatusLine()}
"set statusline+=%*
"let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
nmap <silent> <C-j> <Plug>(ale_previous_wrap)
nmap <silent> <C-k> <Plug>(ale_next_wrap)

set whichwrap+=h,l,<,>,[,]
set backspace=indent,eol,start


" Basic Settings
set shell=/bin/bash
set guifont=Menlo:h14
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set laststatus=2
set gdefault
set incsearch
set showmatch
set hlsearch
set spelllang=en_gb
set more
set autoread
au CursorHold * checktime
"set nowrap

" Changes in vimrc come immediately to effect with:
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Ensure correct syntax highlighting and auto-indentation for Fortran free-form
" source code.
let fortran_more_precise=1
let fortran_do_enddo=1
filetype plugin indent on
syntax on
set background=dark

" Turn on line numbers and row/column numbers.
set nu
set ruler

" Set tabstops to two spaces and ensure tab characters are expanded into
" spaces.
set smarttab
set expandtab
set smartindent
set autoindent
set ts =4
set sts=2
set sw=2

" Fix backspace key.
set bs=2

" Set up searching so that it jumps to matches as the word is being entered and
" is case-insensitive.
set incsearch
set ignorecase
set smartcase

" color settings
highlight LineNr ctermfg=cyan ctermbg=blue

highlight Comment ctermfg=DarkGreen
highlight Statement ctermfg=LightBlue
highlight String ctermfg=Magenta
highlight Type ctermfg=Yellow
highlight PreProc ctermfg=Red cterm=reverse
highlight Constant ctermfg=DarkYellow cterm=bold
highlight Normal ctermfg=LightGrey
highlight NonText ctermfg=Cyan
highlight Special ctermfg=Yellow
hi Search cterm=NONE ctermfg=NONE ctermbg=Black

highlight Cursor ctermfg=Green ctermbg=Green
set guicursor=n-v-c:blinkon0-block-Cursor

" Strip tailing whitespaces (from vim-better-whitespace bundle)
autocmd BufWritePre * StripWhitespace
autocmd VimEnter * DisableWhitespace
let g:better_whitespace_filetypes_blacklist=['md', 'markdown']

" remapping keys in vim
let mapleader = "\<Space>"
nnoremap <Leader><Tab> <Esc>
vnoremap <Leader><Tab> <Esc>
onoremap <Leader><Tab> <Esc>
inoremap <Leader><Tab> <Esc>`^
nnoremap <Leader>, :nohl<CR> " escape highlight mode

" For commenting/deleting blocks (or any other repeated action on any line in a block)
" (comment one line, visually select plot, repeat action with "."):
vnoremap . :norm.<CR>


" Spell check shortcuts:
nnoremap <leader>s :set spell!<CR> " toggle spell check on/off
nnoremap <leader>f z=              " show list with suggestions to choose from

" even nicer FORTRAN formatting smarttab with CTRL+e in normal mode
nnoremap <leader>e gg=G:%s/  ELSE/   ELSE/gie<CR>:%s/  CASE/   CASE/gie<CR>:%s/^[ ]*!/!/gie<CR>
    \ <Leader>,
" :%s/  end/  END/ge<CR>:%s/  case/  CASE/ge<CR>:%s/  select/  SELECT/ge<CR>
"    \:%s/  if/  IF/ge<CR><CR><


" correct colours for tmux
set term=screen-256color

" folding fortran syntax
au! BufRead,BufNewFile *.f90 setfiletype fortran
set foldmethod=syntax
let fortran_fold=1
