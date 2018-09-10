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
call dein#add('vim-jp/autofmt')
call dein#add('tpope/vim-markdown')
call dein#add('previm/previm')
" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
 
" Required:
call dein#end()
 
" Required:
filetype plugin indent on
 
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
   call dein#add('junegunn/seoul256.vim')
   call dein#add('mattn/emmet-vim')
 endif

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable

set number
syntax on
set title
set tabstop=4

" カラースキーマ設定
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 234
colo seoul256

" シンタックスハイライト設定
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'css', 'erb=eruby', 'javascript', 'json=javascript', 'ruby', 'sass', 'xml']

" previm 設定
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

let g:previm_open_cmd = 'open -a Google\ Chrome.app'
