"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/harayu/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/harayu/.cache/dein')
  call dein#begin('/Users/harayu/.cache/dein')
  
  call dein#add('mattn/emmet-vim')
  call dein#add('junegunn/seoul256.vim')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('davidhalter/jedi-vim')
  call dein#add('vim-jp/autofmt')
  call dein#add('tpope/vim-markdown')
  call dein#add('previm/previm')
  call dein#add('ctrlpvim/ctrlp.vim')
  " Let dein manage dein
  " Required:
  call dein#add('/Users/harayu/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" カラースキーマ設定
 " seoul256 (dark):
 "   Range:   233 (darkest) ~ 239 (lightest)
 "   Default: 237
let g:seoul256_background = 234
colo seoul256

 " シンタックスハイライト設定
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'css', 'erb=eruby', 'javascript', 'json=javascript',     'ruby', 'sass', 'xml']

" previm 設定
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

let g:previm_open_cmd = 'open -a Google\ Chrome.app'

set number
syntax on
set nohlsearch
set title
set tabstop=4
set mouse=

" 閉じ括弧補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap( ()<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
