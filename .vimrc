set number

imap <Nul> <Nop>

nnoremap == gg=G
inoremap <silent> jj <ESC> : <C-u> w <CR>
"inoremap { {}<Left>
"inoremap {<Enter> {}<Left><CR><ESC><S-o>
"inoremap ( ()<ESC>i
"inoremap (<Enter> ()<Left><CR><ESC><S-o>
"inoremap ' ''<LEFT>
"inoremap " ""<LEFT>

nnoremap <ESC><ESC> :noh<CR>

autocmd BufNewFile *.cpp 0r $HOME/dotfiles/nvim/template/cpp.txt


" auto indentation of a program
set smartindent
syntax on
set incsearch

" save as root by using w!! 
cnoremap w!! w !sudo tee > /dev/null %<CR> 

set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set complete-=k complete+=k 

set shiftwidth=3
set tabstop=3


""""""""""""""
"" Default settings in this Lab.
""""""""""""""
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif
"
set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode
""set ai			" always set autoindenting on
""set backup		" keep a backup file
"set viminfo='20,\"50	" read/write a .viminfo file, don't store more
"			" than 50 lines of registers
set history=100		" keep 50 lines of command line history
"set ruler		" show the cursor position all the time
"
"" Only do this part when compiled with support for autocommands
"if has("autocmd")
"  augroup fedora
"  autocmd!
"  " In text files, always limit the width of text to 78 characters
"  " autocmd BufRead *.txt set tw=78
"  " When editing a file, always jump to the last cursor position
"  autocmd BufReadPost *
"  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
"  \   exe "normal! g'\"" |
"  \ endif
"  " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
"  autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
"  " start with spec file template
"  autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
"  augroup END
"endif
"
"if has("cscope") && filereadable("/usr/bin/cscope")
"   set csprg=/usr/bin/cscope
"   set csto=0
"   set cst
"   set nocsverb
"   " add any database in current directory
"   if filereadable("cscope.out")
"      cs add $PWD/cscope.out
"   " else add database pointed to by environment
"   elseif $CSCOPE_DB != ""
"      cs add $CSCOPE_DB
"   endif
"   set csverb
"endif
"
"" Switch syntax highlighting on, when the terminal has colors
"" Also switch on highlighting the last used search pattern.
"if &t_Co > 2 || has("gui_running")
"  syntax on
"  set hlsearch
"endif
"
"filetype plugin on
"
"if &term=="xterm"
"     set t_Co=8
"     set t_Sb=[4%dm
"     set t_Sf=[3%dm
"endif
"
"" Don't wake up system with blinking cursor:
"" http://www.linuxpowertop.org/known.php
"let &guicursor = &guicursor . ",a:blinkon0"

" for vim beginners
inoremap <Up>    A<NL>
inoremap <Down>  B<NL>
inoremap <Right> C<NL>
inoremap <Left>  D<NL>
nnoremap <Up>    <ESC>
nnoremap <Down>  <ESC>
nnoremap <Right> <ESC>
nnoremap <Left>  <ESC>

if !has('gui_running')
  augroup term_vim_c_space
    autocmd!
    autocmd VimEnter * map <Nul> <C-Space>
    autocmd VimEnter * map! <Nul> <C-Space>
  augroup END
endif
