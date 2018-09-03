" Dein.vim 設定
if &compatible
  set nocompatible               " Be iMproved
endif
 
" Required:
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim
 
" Required:
call dein#begin(expand('~/.vim/dein'))
 
" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
 
" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('mattn/emmet-vim')
call dein#add('junegunn/seoul256.vim')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('davidhalter/jedi-vim')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
 
" Required:
call dein#end()
 
" Required:
filetype plugin indent on
 
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

set number
syntax on
set title
set tabstop=4
colorscheme iceberg
" Unified color scheme (default: dark)
let g:seoul256_background = 234
colo seoul256
