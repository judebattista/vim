 if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'neovimhaskell/haskell-vim', {'for': ['hs'] }
Plug 'morhetz/gruvbox'
call plug#end()

set nomodeline
set number
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors
syntax on
colorscheme gruvbox
set background=dark
syntax on
filetype plugin indent on

execute "digraphs xs" . 0x2093
execute "digraphs SS" . 0x20D7
execute "digraphs DD" . 0x0302
execute "digraphs is" . 0x1d62
execute "digraphs js" . 0x2c7c
execute "digraphs ks" . 0x2096
execute "digraphs as" . 0x2090
execute "digraphs bS" . 0x1d47
execute "digraphs cS" . 0x1d9c
execute "digraphs ns" . 0x2099
execute "digraphs ``" . 0x0303


let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

let g:haskell_classic_highlighting = 0      "enable opinionated highlighting over classic
