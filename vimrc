"" vim-plug 
"
if has("win32") || has("win64")
    call plug#begin('~/vimfiles/autoload')
else
    call plug#begin('~/.vim/autoload')
endif

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'easymotion/vim-easymotion'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdtree'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'kien/ctrlp.vim'
Plug 'ccampbell/rainbow'
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'hotoo/pangu.vim'
Plug 'junegunn/vim-easy-align'

call plug#end()

let $LANG = 'en'                "设置消息语言
let mapleader = ' '
let autosave=30 

let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1   
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:cobol_legacy_code = 1
let g:molokai_original = 1
let g:NERDTreeShowBookmarks=1
let g:table_mode_corner='|'
let g:mkdp_path_to_chrome = 'chrome'
let g:mkdp_py_version = 3

set nocompatible                "设置非兼容模式
set number                      "打开行号
set relativenumber              "相对行号
set encoding=utf-8              "设置码制
set hlsearch                    "高亮查找
set ruler                       "右下角光标位置
set nowrap                      "不自动换行
set noimdisable                 "normal模式禁止中文输入
set history=30
set autowrite
set autowriteall
set showcmd
set background=dark
set showmatch
set cursorline
set cursorcolumn
set nobackup
set tabstop=4
set expandtab
set encoding=utf-8
set ff=unix
set noendofline
set nolist
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\:h12
set guifontwide=DejaVu\ Sans\ Mono\ for\ Powerline\:h12
set nobackup

if has("win32") || has("win64")
    set pythonthreedll=C:/Users/xsgzh/Anaconda3/python36.dll
endif

cnoremap <C-O> browse oldfiles<CR>

nnoremap <leader>y "+yiw
nnoremap <leader>n :NERDTree<CR>
nnoremap <C-N> :bn<CR>
nnoremap <C-A> gg"+yG

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

colorscheme molokai

if has("gui_running") 
    set langmenu=en                 "设置菜单语言
    set guioptions-=m               "关闭菜单栏
    set guioptions-=T               "关闭工具栏
    set guioptions-=r               "关闭右边滚动条
    autocmd GUIEnter * simalt ~x    "最大化gvim
endif

if has("win32") || has("win64")
    silent source ~\vimfiles\session.vim
    autocmd VimLeave  * mks! ~\vimfiles\session.vim
else
    silent source ~/.vim/session.vim
    autocmd VimLeave  * mks! ~/.vim/session.vim
endif

autocmd FocusLost * silent!:update
