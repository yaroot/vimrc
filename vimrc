

filetype off

let g:neobundle_default_git_protocol = 'git'

set runtimepath+=$HOME/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))

" buggy plugins
set rtp+=$HOME/.vim/vendor/increment

" Bundle 'gmarik/vundle'

NeoBundleFetch 'Shougo/neobundle.vim'


NeoBundle 'Glench/Vim-Jinja2-Syntax'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'gkz/vim-ls'
NeoBundle 'godlygeek/tabular'
NeoBundle 'gre/play2vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'hdima/python-syntax'
NeoBundle 'jnurmine/Zenburn'
NeoBundle 'jnwhiteh/vim-golang'
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'michaeljsmith/vim-indent-object'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'msanders/snipmate.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'othree/html5.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'rking/ag.vim'
NeoBundle 'saltstack/salt-vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 'tpope/vim-surround'
NeoBundle 'wincent/Command-T'
NeoBundle 'yaroot/Align'
NeoBundle 'yaroot/vim-endwise'
NeoBundle 'yaroot/vim-nginx'
NeoBundle 'yaroot/vissort'
" NeoBundle 'yaroot/wowlua.vim'
" NeoBundle 'othree/xml.vim'

" colorschemes
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'pyte'
NeoBundle 'tir_black'
NeoBundle 'twilight'
NeoBundle 'twilight256.vim'
" NeoBundle 'jonathanfilip/vim-lucius'

" random mirrors found on github
NeoBundle "kemadz/taglist"


NeoBundle 'DirDiff.vim'
NeoBundle 'DrawIt'
NeoBundle 'Rainbow-Parenthesis'
NeoBundle 'indentpython.vim'
" NeoBundle 'Gundo'
" NeoBundle 'po.vim'
" NeoBundle 'a.vim'
" NeoBundle 'dbext.vim'
" NeoBundle 'nginx.vim'
" NeoBundle 'openvpn'
" NeoBundle 'taglist.vim'
" NeoBundle 'git://vim-latex.git.sourceforge.net/gitroot/vim-latex/vim-latex'



so $HOME/.vim/vendor/fcitx.vim

set nocp

" leader keybind
let mapleader=','

" Encoding stuffs
set nobomb
set encoding=utf-8
set fileformat=unix
set fileformats=unix,dos,mac
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb-18030,gbk,gb2312,cp963,gb18030,big5,euc-jp,euc-kr,latin1

"au BufReadPost,BufNewFile * if !&readonly | setlocal nobomb fileformat=unix fileencoding=utf-8 | endif

set showmatch       " blink the matching bracket
set hls incsearch
set autoindent cindent nosmartindent
set tabstop=4       " 4 spaces indentation
set shiftwidth=4    " same
set softtabstop=4   " same
set expandtab smarttab " expand tab with spaces
set backspace=indent,eol,start  " smart backspacing
set history=200
set magic ruler
set number
if v:version>=703
  autocmd BufNewFile,BufRead * set relativenumber
else
  set number
endif
set wrap nolinebreak
set diffopt=filler,vertical " diff模式
set scrolloff=6 " 上下滚动留的最少行数
"set cmdheight=2

set completeopt=longest,menu

set textwidth=70
set wrapmargin=0
set formatoptions=croq

filetype plugin indent on
syntax on

" Status Line
set laststatus=2
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L:%c:
set statusline=\ \%F\ %m%r%h%w\ \ %y\ [%{&ff}]\ [%{&fileencoding}]\ [tw:%{&tw}]\ [%p%%]\ [%l/%L]\ [%c]

set wc=<tab>
set wildmenu
"set wildmode=list:longest
set wildmode=longest:full

if v:version>=703
  set undofile
  set undolevels=1000
  if has('win32')
    set undodir=$HOME\.vim\tmp\undo\\\\
  else
    set undodir=~/.vim/tmp/undo//
  endif
endif

if has('win32')
  set backupdir=$HOME\.vim\tmp\backup\\\\
  set directory=$HOME\.vim\tmp\backup\\\\
else
  set backupdir=~/.vim/tmp/backup//
  set directory=~/.vim/tmp/swap//
endif
set backup writebackup

set foldenable
set foldmethod=marker
set foldmarker={{{,}}}
set foldnestmax=5
set foldminlines=1
set foldlevel=0

set ttyfast

set background=dark

if has('gui_running')
  set guioptions=
  set lines=55
  set columns=180

  if has('win32')
    set guifont=Monaco:h9
  elseif has('macunix')
    set guifont=Monaco:h14
  else
    " set guifont=DejaVu\ Sans\ Mono\ 9
    set guifont=tamsyn\ 14
    set guifontwide=WenQuanYi\ Micro\ Hei\ Mono\ 12
    "set guifont=Monospace:h7:w3
  endif
else
  "set t_Co=256
  "colo tir_black
endif

"if &diff
"  colo jellybeans
"endif


"set cuc
"set cul

"set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
hi SpecialKey guibg=NONE ctermbg=NONE
"hi SpecialKey guifg=#3a3a3a ctermfg=237

hi link luaOperator Conditional

let java_highlight_all=1
let java_highlight_functions="style"
let java_highlight_debug=1
let java_mark_braces_in_parens_as_errors=1
let java_space_errors=1
let java_comment_strings=1

let g:lisp_rainbow = 1
"runtime syntax/RainbowParenthesis.vim

runtime macros/matchit.vim

if (v:version>=703)
  au vimenter,colorscheme * hi ColorColumn ctermbg=234 guibg=#121212
  set colorcolumn=72,80
endif


"if executable('ctags')
"endif

nnoremap <C-C> :tabnew<CR>
nnoremap <C-N> :tabnext<CR>
nnoremap <C-P> :tabprevious<CR>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <bs> :noh<CR>
vnoremap <leader>yy "+y
nnoremap <leader>pp "+p
nnoremap <leader>ft :set filetype=
nnoremap <leader>hex :%!xxd<CR>
nnoremap <leader>xeh :%!xxd -r<CR>
nnoremap <leader>2 :set t_Co=256<CR>
nnoremap <leader>8 :set t_Co=8<CR>

" '<leader>s-' convert
"
"   SECTION BAD ASS
"   ==========
"
" to
"
"   SECTION BAD ASS
"   ---------------
"

nnoremap <leader>s- VdkVypVr-
nnoremap <leader>s= VdkVypVr=
nnoremap <leader>s. VdkVypVr

" ag on the fly
nnoremap <leader>a :Ag  <bs>

" TaskList
" map <unique> <leader>tl <Plug>TaskList

" NERDTree toggle
"nnoremap <F11> :NERDTreeToggle<CR>
" taglist
"nnoremap <F12> :TlistToggle<CR>

" Command-T
nnoremap <unique> <silent> <Leader>tt :CommandT<CR>
nnoremap <unique> <silent> <Leader>tf :CommandTFlush<CR>
nnoremap <unique> <silent> <Leader>tb :CommandTBuffer<CR>

" ctrlp
nnoremap <leader>tp :CtrlP<CR>
let g:ctrlp_map = "<c-m-p>"
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

" DirDiff
"Sets default exclude pattern:
let g:DirDiffExcludes = "CVS,*.git,*.svn,*.class,*.exe,.*.swp"
"Sets default ignore pattern:
let g:DirDiffIgnore = "Id:,Revision:,Date:"
"If DirDiffSort is set to 1, sorts the diff lines.
let g:DirDiffSort = 1
"Sets the diff window (bottom window) height (rows)
let g:DirDiffWindowSize = 10
"Ignore case during diff
let g:DirDiffIgnoreCase = 0

" snipMate
"let g:snips_trigger_key='<c-y>'
"let g:snips_trigger_key_backwards='<s-c->'

" indent guides
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size  = 1

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#202520 ctermbg=grey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#202020 ctermbg=darkgrey

" disable Align mapping
let g:loaded_AlignMapsPlugin = "v41"

if has('win32')
  let g:loaded_dbext_dbi = 1
  let g:loaded_dbext_auto = 1
  let g:loaded_dbext = 1
endif

let g:syntastic_mode_map = {}
let g:syntastic_mode_map['mode'] = 'passive'

let python_version_2 = 1
let python_highlight_all = 1
let python_print_as_function = 0

