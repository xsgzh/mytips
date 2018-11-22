"" vim-plug 
"
if has("win32") || has("win64")
    set pythonthreedll=C:/ProgramData/Anaconda3/python37.dll
endif

if has("win32") || has("win64")
    call plug#begin('~/vimfiles/autoload')
else
    call plug#begin('~/.vim/autoload')
endif

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/deoplete.nvim'
Plug 'tpope/vim-surround'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go'
Plug 'fatih/vim-go-tutorial'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'mileszs/ack.vim'
"Plug 'ggreer/the_silver_searcher'
"Plug 'tomasr/molokai'
"Plug 'easymotion/vim-easymotion'
"Plug 'Shougo/neocomplete.vim'
"Plug 'Shougo/vimfiler.vim'
"Plug 'Shougo/unite.vim'
"Plug 'iamcco/mathjax-support-for-mkdp'
"Plug 'iamcco/markdown-preview.vim'
"Plug 'tpope/vim-commentary'
"Plug 'kien/ctrlp.vim'
"Plug 'ccampbell/rainbow'
"Plug 'plasticboy/vim-markdown'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'hotoo/pangu.vim'
"Plug 'mg979/vim-visual-multi':;
"Plug 'wellle/targets.vim'

call plug#end()

let $LANG = 'en'                "设置消息语言
let mapleader = ' '
let autosave=30 

let g:airline_theme='onedark'
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
let g:deoplete#enable_at_startup = 1
let g:go_fmt_command = "goimports"
let g:ackprg = 'ag --vimgrep'

set nocompatible                "设置非兼容模式
set number                      "打开行号
set relativenumber              "相对行号
set encoding=utf-8              "设置码制
set hlsearch                    "高亮查找
set ruler                       "右下角光标位置
set nowrap                      "不自动换行
set noimdisable                 "normal模式禁止中文输
set history=3000
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
set fileencoding=utf-8
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set ff=unix
set noendofline
set nolist
"set guifont=Fira\ Code\ Regular:h16
"set guifontwide=DejaVu\ Sans\ Mono\ for\ Powerline\:h12
set nobackup
set shiftwidth=4
set softtabstop=4
set laststatus=2
set rtp+=$GOPATH\src\golang.org\x\lint\misc\vim
"set hidden
set smartcase
"set nowrapscan
set incsearch
set ignorecase
set backspace=indent,eol,start
set clipboard+=unnamed

map <F2> :NERDTreeMirror<CR>
map <F2> :NERDTreeToggle<CR>

vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>n :NERDTree<CR>
nnoremap <tab> :bn<CR>
" nnoremap <C-A> gg"+yG

nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

colorscheme onedark
"colorscheme gruvbox

if has("guirunning") 
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

hi Visual guibg=#ac5600
hi Normal ctermfg=green ctermbg=black guifg=#13ea0d guibg=#0C0C0C

autocmd BufWritePost,FileWritePost *.go execute 'GoLint' | cwindow

filetype plugin indent on

set guifont=Fira\ Code\ Regular:h13

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

python3 import neovim
