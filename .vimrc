"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  ____          ____  ____  ____          ____  ________        ______   ""
""  \   \        /   /  |  |  |   \        /   |  |   __  \      /  ____|  "" 
""   \   \      /   /   |  |  |    \      /    |  |  |  \  \    /  /       ""
""    \   \    /   /    |  |  |     \    /     |  |  |__/  /   |  |        ""
""     \   \  /   /     |  |  |  |   \  /   |  |  |       /    |  |        ""
""      \   \/   /      |  |  |  |\   \/   /|  |  |  |\   \    |  |        ""
""       \      /       |  |  |  | \      / |  |  |  | \   \    \  \____   ""
""        \    /        |  |  |  |  \    /  |  |  |  |  \   \    \      |  ""
""         ----         ----  ----   ----   ----  ----   ----     -------  ""
""                                                                         ""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" GREETINGS ON STARTUP

echo "Welcome back Biagio! >^.^<\n\nBasic vimrc loaded!"

"------------------|
" GENERAL SETTINGS |
"------------------|
" Vim general settings

" Disable Vi compatibility to avoid unwanted issues
set nocompatible

" Detect filetypes
filetype on

" Set automatic indentation based on filetype
filetype indent on

" Set colorscheme
colorscheme murphy 

""""""""""""""|
" LEADER KEYS |
""""""""""""""|
let mapleader = ","
let maplocalleader = "-"

"---------------------|
" LINE NUMBER SETTING |
"---------------------|

" See line number
set number

" Set line number column width (on the left of terminal)
set numberwidth=5

" See the relative number line with respect to cursor position
set relativenumber

"-----------------|
" TAB AND SPACING |
"-----------------|

" Autoindentation
set autoindent

" Use spaces instead of tab
set expandtab

" Set number of spaces inserted by tab
set tabstop=2

" Set number of spaces inserted when tabbing with >> and << in normal mode
set shiftwidth=2

"------------------------------|
" VISUALIZATION AND SCROLLING  |
"------------------------------|

" Do not wrap long lines
set nowrap

" Do wrap long lines
" set nowrap!

" Vertical and horizontal scrolling
autocmd VimEnter,WinEnter * let &scrolloff=winheight(0)/4

"-------------|
" PARENTHESIS |
"-------------|

" Highlight matching parenthesis
set showmatch

" Set delay to highligth parenthesis (1/10 of seconds)
set matchtime=10

"-----------------|
" MOVEMENTS       |
"-----------------|
" Remap vertical movements to visual vertical movements
nnoremap k gk
nnoremap j gj

"-----------------|
" CUSTOM COMMANDS |
"-----------------|

" Move line up
" (NORMAL - INSERT)
nnoremap <c-k> ddkP
inoremap <c-k> ddkP

" Move line down
" (NORMAL - INSERT)
nnoremap <c-j> ddp
inoremap <c-j> ddp

" Convert word to upper case 
" (NORMAL - INSERT)
nnoremap <c-U> vawU<esc>
inoremap <c-U> <esc>vawU<esc>i

" Convert word to lower case 
" (NORMAL - INSERT)
nnoremap <c-l> vawu<esc>
inoremap <c-l> <esc>vawu<esc>i

" Undo Redo
" (INSERT)
inoremap <c-u> <esc>ui
inoremap <c-r> <esc><c-R>i

" Add quotes to word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Move to the start or end of a line, ignoring white spaces
" (It has some problems with single characters at the beginnning and end of lines)
nnoremap H 0w
nnoremap L $be

" Add lines without entering in insert mode
nnoremap o o<esc>
nnoremap O O<esc>

" Add tabulation in normal mode
nnoremap <tab> i<tab><esc>l

" Add space in normal mode
nnoremap <space> i<space><esc>l

" Rapidly exit insert mode
inoremap jk <esc>

" Remove some default commands to force you to use the custom ones
" and force you out of bad Vim habits
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

"---------|
" WINDOWS |
""""""""""|
" Shortcut for window managements
nnoremap <leader>k <c-w>k
nnoremap <leader>j <c-w>j
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h

"-------------------------|
" ABBREVIATIONS FOR TYPOS |
"-------------------------|
" Abbreviations can help you correct typing mistakes

" Common and errors
iabbrev asn and
iabbrev adn and

" Height
iabbrev heigth height
iabbrev HEIGTH HEIGHT
iabbrev Heigth Height

" Width
iabbrev widht width
iabbrev WIDHT WIDTH
iabbrev Widht Width

" Length
iabbrev lenght length
iabbrev LENGHT LENGTH
iabbrev Lenght Length

"------------------------------------------|
" ABBREVIATIONS FOR COMMONLY USED PATTERNS |
"------------------------------------------|
" Abbreviations can save your time

" Email
abbrev @@ biagio.trimarchi2@unibo.it

"-------|
" VIMRC |
"-------|

" Source this vim file
nnoremap <leader>sv :source $MYVIMRC<CR>

" Open this file
nnoremap <leader>ev :split $MYVIMRC<CR>

"-------------|
" MISCELLANIA |
"-------------|
" Miscellania commands
nnoremap <leader>cg :colorscheme murphy<CR>
nnoremap <leader>cr :colorscheme zellner<CR>  

"--------|
" PYTHON |
"--------|
" Python shortcuts and snippets

" Python autocommands group
augroup PYTHON
  " Clear autogroup to avoid duplication on sourcing
  autocmd!

  " Comment a line
  autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>

  " IF snippet
  autocmd FileType python :iabbrev <buffer> iff if:
augroup END
"-----|
" C++ | 
"-----|
" C++ shortcuts and snippets

" C++ autocommands group
augroup CPP
  " Clear autogroup to avoid duplication on sourcing
  autocmd!

  " Comment a line
  autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>

  " IF snippet
  autocmd FileType cpp :iabbrev <buffer> iff if(){<CR>}
augroup END

